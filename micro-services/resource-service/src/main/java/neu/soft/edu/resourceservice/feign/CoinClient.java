package neu.soft.edu.resourceservice.feign;

import neu.soft.edu.resourceservice.feign.pojo.CoinRecord;
import neu.soft.edu.resourceservice.feign.pojo.UserCoin;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;

@FeignClient("coin-service")
public interface CoinClient {

    @GetMapping("/coin/queryCoinById/{userId}")
    public UserCoin queryCoinById(@PathVariable("userId") int userId);

    @PutMapping("/coin/queryCoinById")
    public Boolean updateCoin(UserCoin userCoin);

    @PostMapping("/coin/insertCoin")
    public Boolean insertRecord(CoinRecord coinRecord);
}
