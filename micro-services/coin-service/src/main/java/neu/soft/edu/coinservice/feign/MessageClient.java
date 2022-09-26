package neu.soft.edu.coinservice.feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(value = "message-service")
public interface MessageClient {

    @GetMapping("/message/system/newMessageState/{userId}")
    Boolean newMessageState(@PathVariable("userId") int userId);

}
