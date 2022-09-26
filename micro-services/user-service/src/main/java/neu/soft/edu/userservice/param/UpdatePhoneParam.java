package neu.soft.edu.userservice.param;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * 绑定手机号参数
 */
@ApiModel("绑定手机号参数")
public class UpdatePhoneParam {
    @ApiModelProperty("手机号")
    public String userPhone;
    @ApiModelProperty("验证码")
    public String checkCode;
}
