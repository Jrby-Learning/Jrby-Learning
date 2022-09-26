package neu.soft.edu.mailservice.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import neu.soft.edu.mailservice.param.SendCodeMailParam;
import neu.soft.edu.mailservice.param.SendCodePhoneParam;
import neu.soft.edu.mailservice.service.AliYunSmsService;
import neu.soft.edu.mailservice.service.IMailService;
import neu.soft.edu.mailservice.util.redis.RedisUtil;
import neu.soft.edu.mailservice.util.tools.ResultVO;
import neu.soft.edu.mailservice.util.tools.Tools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/sms")
@Api(tags = "消息通知接口")
public class SMSController {

    @Autowired
    private IMailService mailService;

    @Autowired
    private AliYunSmsService aliYunSmsService;

    @Autowired
    private RedisUtil redisUtil;


    /**
     * 发送简单邮件
     * @param to 收件人
     * @param subject 主题
     * @param content 内容
     */
    @PostMapping("/sendSimpleMail")
    @ApiOperation("发送简单邮件")
    public ResultVO sendSimpleMail(@ApiParam("收件人") @RequestParam("to") String to,
                                   @ApiParam("主题") @RequestParam("subject") String subject,
                                   @ApiParam("内容") @RequestParam("content") String content) {
        mailService.sendSimpleMail(to,subject,content);
        return ResultVO.success("邮件发送成功");
    }

    /**
     * 发送HTML邮件
     * @param to 收件人
     * @param subject 主题
     * @param content 内容
     */
    @PostMapping("/sendHtmlMail")
    @ApiOperation("发送HTML邮件")
    public ResultVO sendHtmlMail(@ApiParam("收件人") @RequestParam("to") String to,
                                   @ApiParam("主题") @RequestParam("subject") String subject,
                                   @ApiParam("内容") @RequestParam("content") String content) {
        System.out.println(to);
        System.out.println(subject);
        System.out.println(content);
        boolean send = mailService.sendHtmlMail(to, subject, content);
        // boolean send = mailClient.sendHTMLMail(new MailParam(to, subject, content, null, null));
        if(send){
            return ResultVO.success("邮件发送成功");
        }
        return ResultVO.success("邮件发送失败");
    }

    /**
     * 发送带附件的邮件
     * @param to 收件人
     * @param subject 主题
     * @param content 内容
     * @param filePath 附件
     */
    @PostMapping("/sendAttachmentsMail")
    @ApiOperation("发送带附件的邮件")
    public ResultVO sendAttachmentsMail(@ApiParam("收件人") @RequestParam("to") String to,
                                 @ApiParam("主题") @RequestParam("subject") String subject,
                                 @ApiParam("内容") @RequestParam("content") String content,
                                 @ApiParam("附件路径") @RequestParam("filePath") String filePath) {
        boolean send = mailService.sendAttachmentsMail(to, subject, content,filePath);
        // boolean send = mailClient.sendAttachmentsMail(new MailParam(to, subject, content, filePath, null));
        if(send){
            return ResultVO.success("邮件发送成功");
        }
        return ResultVO.success("邮件发送失败");
    }

    /**
     * 发送注册成功的邮箱
     * @param to 收件人
     * @param userName 用户名
     * @param passWord 密码
     */
    @PostMapping("/sendRegisterMail")
    @ApiOperation("发送注册成功邮箱信息")
    public ResultVO sendRegisterMail(@ApiParam("收件人") @RequestParam("to") String to,
                                     @ApiParam("用户名") @RequestParam("userName") String userName,
                                     @ApiParam("密码") @RequestParam("passWord") String passWord) {
        Map<String,Object> data = new HashMap<>();
        data.put("account",to);
        data.put("name",userName);
        data.put("password",passWord);
        data.put("date",new Date());
        data.put("year", Calendar.getInstance().get(Calendar.YEAR));
        boolean send = mailService.sendTemplateMail(to, "注册成功", "mail/register", data);
        //boolean send = mailClient.sendTemplateMail(new MailParam(to, "注册成功", "mail/register", null, data));
        if(send){
            return ResultVO.success("邮件发送成功");
        }
        return ResultVO.success("邮件发送失败");
    }

    /**
     * 发送操作验证码的邮箱
     * @param sendCodeMailParam 收件人参数
     *
     */
    @PostMapping("/sendCodeMail")
    @ApiOperation("发送操作验证码的邮箱")
    public ResultVO sendCodeMail(@RequestBody SendCodeMailParam sendCodeMailParam) {
        String to = sendCodeMailParam.to;
        String userName = sendCodeMailParam.userName;
        Map<String,Object> data = new HashMap<>();
        String code = Tools.randomCode();
        redisUtil.set(to,code,60*10);
        data.put("name",userName);
        data.put("code",code);
        data.put("date",new Date());
        data.put("year", Calendar.getInstance().get(Calendar.YEAR));
        boolean send = mailService.sendTemplateMail(to, "操作验证码", "mail/code", data);
        //boolean send = mailClient.sendTemplateMail(new MailParam(to, "操作验证码", "mail/code", null, data));
        if(send){
            return ResultVO.success("邮件发送成功");
        }
        return ResultVO.success("邮件发送失败");
    }

    /**
     * 发送操作验证码的邮箱
     * @param sendCodePhoneParam 手机号
     */
    @PostMapping("/phoneCheckCode")
    @ApiOperation("发送短信验证码")
    public ResultVO phoneCheckCode(@RequestBody SendCodePhoneParam sendCodePhoneParam) {
        String phone = sendCodePhoneParam.phone;
        String code = Tools.randomCode();
        redisUtil.set(phone,code,60*10);
        boolean sendSms = aliYunSmsService.sendSms(phone, code);
        if(sendSms){
            return ResultVO.success("手机短信发送成功");
        }
        return ResultVO.success("手机短信发送失败");
    }
}
