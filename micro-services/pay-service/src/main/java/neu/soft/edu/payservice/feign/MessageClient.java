package neu.soft.edu.payservice.feign;

import neu.soft.edu.payservice.feign.pojo.MyMessage;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient("message-service")
public interface MessageClient {
    @PostMapping("/message/system/insertMyMessage")
    public Boolean insertMyMessage(@RequestBody MyMessage myMessage);
}
