package neu.soft.edu.coinservice.controller;

import cn.dev33.satoken.stp.StpUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import neu.soft.edu.coinservice.pojo.CoinRecord;
import neu.soft.edu.coinservice.pojo.UserCoin;
import neu.soft.edu.coinservice.service.CoinRecordService;
import neu.soft.edu.coinservice.service.UserCoinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import neu.soft.edu.coinservice.util.tools.ResultVO;
import java.util.HashMap;
import java.util.List;

/**
 * 用户积分
 */
@RestController
@Api(tags = "用户其它操作接口")
public class UserCoinController {
    @Autowired
    UserCoinService userCoinService;
    @Autowired
    CoinRecordService coinRecordService;

    // 查询用户积分
    @GetMapping("/coin/queryCoin")
    @ApiOperation("查询用户积分")
    public ResultVO queryCoin() {
        int userId  = StpUtil.getLoginIdAsInt();
        UserCoin userCoin = userCoinService.queryCoinById(userId);
        if(userCoin!=null){
            return ResultVO.success("积分查询成功",userCoin.getUserCoin());
        }
        return ResultVO.success("用户积分不存在",0);
    }

    // 查询用户积分记录
    @GetMapping("/coin/queryCoinRecord")
    @ApiOperation("查询用户积分记录")
    public ResultVO queryCoinRecord(@RequestParam int pageNum, @RequestParam int pageSize) {
        if(pageNum==0){ pageNum=1; }
        if(pageSize==0){ pageSize=5; }
        int userId  = StpUtil.getLoginIdAsInt();
        List<CoinRecord> coinRecords = coinRecordService.queryRecordById(userId,pageNum,pageSize);
        Integer count = coinRecordService.queryCount(userId);
        HashMap<String, Object> data = new HashMap<>();
        data.put("list",coinRecords);
        data.put("total",count);
        if(coinRecords!=null){
            return ResultVO.success("积分记录查询成功",data);
        }
        return ResultVO.success("积分记录查询失败",null);
    }

    //  ----------------- for other micro services ------------
    @PostMapping("/coin/insertCoin")
    @ApiOperation("添加积分")
    public Boolean insertCoin(@RequestBody UserCoin userCoin) {
        return userCoinService.insertCoin(userCoin);
    }

    @PostMapping("/coin/insertRecord")
    @ApiOperation("插入积分记录")
    public Boolean insertRecord(@RequestBody CoinRecord coinRecord) {
        return coinRecordService.insertRecord(coinRecord);
    }

    @GetMapping("/coin/queryCoinById/{userId}")
    @ApiOperation("根据 userId 查询 coin")
    public UserCoin queryCoinById(@PathVariable("userId") int userId) {
        return userCoinService.queryCoinById(userId);
    }

    @PutMapping("/coin/updateCoin")
    @ApiOperation("更新 coin")
    public Boolean updateCoin(@RequestBody UserCoin userCoin) {
        return userCoinService.updateCoin(userCoin);
    }
}
