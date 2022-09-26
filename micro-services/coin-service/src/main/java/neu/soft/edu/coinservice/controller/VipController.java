package neu.soft.edu.coinservice.controller;

import cn.dev33.satoken.stp.StpUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import neu.soft.edu.coinservice.pojo.UserVip;
import neu.soft.edu.coinservice.pojo.Vip;
import neu.soft.edu.coinservice.service.UserVipService;
import neu.soft.edu.coinservice.service.VipService;
import neu.soft.edu.coinservice.util.tools.ResultVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Vip详情
 */
@RestController
@RequestMapping("/vip")
@Api(tags = "VIP详情接口")
public class VipController {
    @Autowired
    VipService vipService;
    @Autowired
    UserVipService userVipService;

    // 获取VIP信息
    @GetMapping("/info")
    @ApiOperation("查询VIP详情")
    public ResultVO queryVips() {
        List<Vip> vips = vipService.queryAllVip();
        return ResultVO.success("vip查询成功",vips);
    }

    // 获取VIP信息
    @GetMapping("/my")
    @ApiOperation("查询我的VIP")
    public ResultVO queryMyVip() {
        int userId  = StpUtil.getLoginIdAsInt();
        Vip vip = userVipService.queryVipByUserId(userId);
        UserVip userVip = userVipService.queryUserVipByUserId(userId);
        Map<String, Object> data = new HashMap<>();
        data.put("isVip",false);
        if(vip!=null){
            data.put("isVip",true);
            data.put("vipName",vip.getVipName());
            data.put("vipIcon",vip.getVipIcon());
            data.put("expireDate",userVip.getExpireTime());
        }
        return ResultVO.success("vip查询成功",data);
    }

    // 根据VipId查询Vip信息
    @GetMapping("/id")
    @ApiOperation("查询我的VIP")
    public ResultVO queryVipById(Integer vipId) {
        Vip vip = vipService.queryVipById(vipId);
        return ResultVO.success("vip查询成功",vip);
    }

    // ----------------- for others -----------------
    @GetMapping("/{userId}")
    @ApiOperation("获得 UserVip")
    public UserVip queryUserVipByUserId(@PathVariable("userId") int userId) {
        return userVipService.queryUserVipByUserId(userId);
    }

    @PutMapping("/update")
    @ApiOperation("更新 vip")
    public Boolean updateUserVip(@RequestBody UserVip userVip) {
        return userVipService.updateUserVip(userVip);
    }

    @PostMapping("/insert")
    @ApiOperation("插入 Vip")
    public Boolean insertUserVip(@RequestBody UserVip userVip) {
        return userVipService.insertUserVip(userVip);
    }

    @GetMapping("/query/{vipId}")
    @ApiOperation("根据id查询")
    public Vip queryVipById(@PathVariable("vipId") int vipId) {
        return vipService.queryVipById(vipId);
    }

}
