package neu.soft.edu.userservice.param;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * 忘记密码参数
 */

@ApiModel("忘记密码参数")
public class ForgotPasswordParam {
    @ApiModelProperty("帐号")
    public String userAccount;
    @ApiModelProperty("密码")
    public String passWord;
    @ApiModelProperty("再次密码")
    public String checkPassWord;
    @ApiModelProperty("邮箱验证码")
    public String checkCode;
}
