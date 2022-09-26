package neu.soft.edu.userservice.param;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * 注册用户
 */
@ApiModel("注册用户参数")
public class RegisterParam {
    @ApiModelProperty("帐号")
    public String userAccount;
    @ApiModelProperty("昵称")
    public String userName;
    @ApiModelProperty("密码")
    public String passWord;
    @ApiModelProperty("邮箱验证码")
    public String checkCode;
}
