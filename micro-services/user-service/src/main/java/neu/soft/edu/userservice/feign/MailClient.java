package neu.soft.edu.userservice.feign;

import io.swagger.annotations.ApiOperation;
import neu.soft.edu.userservice.feign.param.MailParam;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Map;

@FeignClient("mail-service")
public interface MailClient {

    @PostMapping("/mail/template")
    @ApiOperation("发送带模板的邮件")
    Boolean sendTemplateMail(MailParam mailParam);
}
