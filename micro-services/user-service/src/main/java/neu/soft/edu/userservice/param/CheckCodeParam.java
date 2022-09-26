package neu.soft.edu.userservice.param;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * 图形验证码的参数
 */
@ApiModel("图形验证码参数")
public class CheckCodeParam {
    @ApiModelProperty("验证码的校验key")
    public String checkCodeKey;
    @ApiModelProperty("验证码")
    public String checkCode;
}
