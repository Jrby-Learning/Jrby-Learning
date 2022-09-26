package neu.soft.edu.smsservice.feign;

import neu.soft.edu.smsservice.feign.param.MailParam;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Map;

@FeignClient("mail-service")
public interface MailClient {

    @PostMapping("/mail/simple")
    Boolean sendSimpleMail(MailParam mailParam);

    @PostMapping("/mail/html")
    Boolean sendHTMLMail(MailParam mailParam);

    @PostMapping("/mail/attach")
    Boolean sendAttachmentsMail(MailParam mailParam);

    @PostMapping("/mail/template")
    Boolean sendTemplateMail(MailParam mailParam);

}
