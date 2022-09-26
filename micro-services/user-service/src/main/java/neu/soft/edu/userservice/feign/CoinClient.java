package neu.soft.edu.userservice.feign;

import neu.soft.edu.userservice.feign.pojo.CoinRecord;
import neu.soft.edu.userservice.feign.pojo.UserCoin;
import neu.soft.edu.userservice.feign.pojo.UserVip;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

@FeignClient("coin-service")
public interface CoinClient {

    @PostMapping("/coin/insertCoin")
    Boolean insertCoin(UserCoin userCoin);

    @PostMapping("/coin/insertRecord")
    Boolean insertRecord(CoinRecord coinRecord);

    @GetMapping("/vip/{userId}")
    UserVip queryUserVipByUserId(@PathVariable("userId") int userId);

    @PutMapping("/vip/update")
    Boolean updateUserVip(UserVip userVip);
}
