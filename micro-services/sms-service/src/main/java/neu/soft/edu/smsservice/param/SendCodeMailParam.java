package neu.soft.edu.smsservice.param;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * 邮箱验证码参数
 */
@ApiModel("发送邮箱验证码参数")
public class SendCodeMailParam {
    @ApiModelProperty("收件人")
    public String to;
    @ApiModelProperty("用户名")
    public String userName;
}
