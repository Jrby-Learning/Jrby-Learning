package neu.soft.edu.smsservice.service;

/**
 * 阿里云短信发送服务
 */
public interface AliYunSmsService {
    /**
     * 发送短信的接口
     * @param phoneNum 手机号
     * @param message     消息
     * @return boolean 是否发送成功
     */
    boolean sendSms(String phoneNum, String message);
}