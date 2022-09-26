package neu.soft.edu.resourceservice.feign;

import neu.soft.edu.resourceservice.feign.pojo.MyMessage;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;

@FeignClient("message-service")
public interface MessageClient {
    @PostMapping("/message/system/insertMyMessage")
    public Boolean insertMyMessage(MyMessage myMessage);
}
