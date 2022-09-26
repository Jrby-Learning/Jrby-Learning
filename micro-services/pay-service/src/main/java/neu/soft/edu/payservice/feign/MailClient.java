package neu.soft.edu.payservice.feign;

import neu.soft.edu.payservice.feign.param.MailParam;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;

@FeignClient("mail-service")
public interface MailClient {

    @PostMapping("/mail/template")
    Boolean sendTemplateMail(MailParam mailParam);
}
