package neu.soft.edu.userservice.param;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * 用户登录的参数
 */
@ApiModel("用户登录参数")
public class LoginParam {
    @ApiModelProperty("帐号")
    public String userAccount;
    @ApiModelProperty("密码")
    public String passWord;
    @ApiModelProperty("验证码Key")
    public String checkCodeKey;
    @ApiModelProperty("验证码")
    public String checkCode;
}
