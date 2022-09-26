package neu.soft.edu.userservice.feign;

import neu.soft.edu.userservice.feign.pojo.MyMessage;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient(value = "message-service")
public interface MessageClient {

    @GetMapping("/message/system/newMessageState/{userId}")
    Boolean newMessageState(@PathVariable("userId") int userId);

    @PostMapping("/message/system/insertMyMessage")
    public Boolean insertMyMessage(MyMessage myMessage);

}
