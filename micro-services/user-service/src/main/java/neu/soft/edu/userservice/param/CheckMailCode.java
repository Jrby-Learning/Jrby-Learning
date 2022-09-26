package neu.soft.edu.userservice.param;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * 验证邮箱验证码
 */
@ApiModel("验证邮箱验证码是否正确参数")
public class CheckMailCode {
    @ApiModelProperty("邮箱号")
    public String email;
    @ApiModelProperty("验证码")
    public String checkCode;
}
