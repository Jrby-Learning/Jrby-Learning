package neu.soft.edu.smsservice.param;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * 发送手机验证码参数
 */
@ApiModel("发送手机验证码参数")
public class SendCodePhoneParam {
    @ApiModelProperty("手机号")
    public String phone;
}
