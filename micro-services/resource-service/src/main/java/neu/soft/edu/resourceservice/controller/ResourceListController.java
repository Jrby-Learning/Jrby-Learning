package neu.soft.edu.resourceservice.controller;

import cn.dev33.satoken.stp.StpUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import neu.soft.edu.resourceservice.feign.pojo.CoinRecord;
import neu.soft.edu.resourceservice.feign.pojo.MyMessage;
import neu.soft.edu.resourceservice.feign.pojo.UserCoin;
import neu.soft.edu.resourceservice.pojo.ResourceList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import neu.soft.edu.resourceservice.util.tools.ResultVO;
import neu.soft.edu.resourceservice.util.tools.PropertiesUtil;
import neu.soft.edu.resourceservice.service.ResourceListService;
import neu.soft.edu.resourceservice.feign.CoinClient;
import neu.soft.edu.resourceservice.feign.MessageClient;



/**
 * 学习资料
 */
@RestController
@RequestMapping("/course")
@Api(tags = "学习资料接口")
public class ResourceListController {
    private final Logger logger = LoggerFactory.getLogger(ResourceListController.class);
    @Autowired
    ResourceListService resourceListService;
    @Autowired
    CoinClient coinClient;
    @Autowired
    MessageClient messageClient;

    // 获取所有学习资源
    @GetMapping("/resource/all")
    @ApiOperation("获取所有学习资源")
    public ResultVO queryResource(@RequestParam(name = "pageNum", defaultValue = "1") int pageNum,
                                  @RequestParam(name = "pageSize", defaultValue = "15") int pageSize) {
        List<ResourceList> resourceLists = resourceListService.queryAllResource(pageNum, pageSize);
        Integer total = resourceListService.queryCount();
        HashMap<String, Object> data = new HashMap<>();
        data.put("list", resourceLists);
        data.put("total", total);
        return ResultVO.success("学习资源查询成功", data);
    }

    // 通过资源名称获取学习资源
    @GetMapping("/resource/name")
    @ApiOperation("通过资源名称获取学习资源")
    public ResultVO queryResourceByName(@RequestParam(name = "resourceName") String resourceName,
                                        @RequestParam(name = "pageNum", defaultValue = "1") int pageNum,
                                        @RequestParam(name = "pageSize", defaultValue = "15") int pageSize) {
        List<ResourceList> resourceLists = resourceListService.queryAllResourceByName(resourceName, pageNum, pageSize);
        Integer total = resourceListService.queryCountByName(resourceName);
        HashMap<String, Object> data = new HashMap<>();
        data.put("list", resourceLists);
        data.put("total", total);
        return ResultVO.success("学习资源查询成功", data);
    }

    /**
     * 通过资源名称获取学习资源
     * @param resourceId 资源ID
     * @return ResultVO
     */
    @GetMapping("/resource/exist")
    @ApiOperation("检测学习资源是否存在")
    public ResultVO queryResourceByName(@RequestParam(name = "resourceId") Integer resourceId) {
        if (resourceId == null) {
            return ResultVO.error("缺少参数");
        }
        ResourceList resourceList = resourceListService.queryResourceById(resourceId);
        if (resourceList == null || resourceList.getFileUrl() == null) {
            return ResultVO.error("资源不存在");
        }
        //设置文件路径
        File file = new File(PropertiesUtil.getAdminPath() + resourceList.getFileUrl());
        logger.info(file.getAbsolutePath());
        if (!file.exists()) {
            logger.warn("{}文件不存在，文件路径：{}", file.getName(), file.getAbsolutePath());
            return ResultVO.error("文件不存在");
        }
        int userId = StpUtil.getLoginIdAsInt();
        UserCoin userCoin = coinClient.queryCoinById(userId);
        if (userCoin.getUserCoin() < resourceList.getCoin()) {
            return ResultVO.error("积分余额不足");
        }
        //下载学习资料后扣除对应积分
        userCoin.setUserCoin(userCoin.getUserCoin() - resourceList.getCoin());
        coinClient.updateCoin(userCoin);
        //积分记录信息
        CoinRecord coinRecord = new CoinRecord();
        coinRecord.setUserId(userId);
        coinRecord.setRecordTime(new Date());
        coinRecord.setVary("-" + resourceList.getCoin());
        coinRecord.setRemark("下载《" + resourceList.getResourceName() + "》扣除" + resourceList.getCoin() + "积分");
        coinClient.insertRecord(coinRecord);
        //我的消息 中添加注册消息
        MyMessage myMessage = new MyMessage();
        myMessage.setUserId(userId);
        myMessage.setTitle("扣除积分");
        myMessage.setContent("您兑换学习资源 <strong>《" + resourceList.getResourceName() + "》</strong> ，扣除" + resourceList.getCoin() + "积分");
        myMessage.setUrl("#/myCoin");
        myMessage.setReadState(false);
        myMessage.setDeleteState(false);
        messageClient.insertMyMessage(myMessage);
        return ResultVO.success("满足下载条件");
    }

    // ----------------------------------
    @GetMapping("/resource/query/{resourceId}")
    public ResourceList queryResourceById(@PathVariable int resourceId) {
        return resourceListService.queryResourceById(resourceId);
    }
}
