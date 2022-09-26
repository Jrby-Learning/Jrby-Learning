package neu.soft.edu.payservice.feign;

import neu.soft.edu.payservice.feign.pojo.CoinRecord;
import neu.soft.edu.payservice.feign.pojo.UserCoin;
import neu.soft.edu.payservice.feign.pojo.UserVip;
import neu.soft.edu.payservice.feign.pojo.Vip;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;

@FeignClient("coin-service")
public interface CoinClient {

    @PostMapping("/coin/insertCoin")
    Boolean insertCoin(UserCoin userCoin);

    @PostMapping("/coin/insertRecord")
    Boolean insertRecord(CoinRecord coinRecord);

    @PutMapping("/coin/updateCoin")
    Boolean updateCoin(@RequestBody UserCoin userCoin);

    @GetMapping("/coin/queryCoinById/{userId}")
    UserCoin queryCoinById(@PathVariable("userId") int userId);

    @GetMapping("/vip/query/{vipId}")
    Vip queryVipById(@PathVariable("vipId") int vipId);

    @GetMapping("/vip/{userId}")
    UserVip queryUserVipByUserId(@PathVariable("userId") int userId);

    @PostMapping("/vip/insert")
    Boolean insertUserVip(UserVip userVip);

    @PutMapping("/vip/update")
    Boolean updateUserVip(UserVip userVip);

}

