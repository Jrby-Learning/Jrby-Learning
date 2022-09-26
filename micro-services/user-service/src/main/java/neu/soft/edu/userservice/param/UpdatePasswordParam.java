package neu.soft.edu.userservice.param;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * 修改密码参数
 */
@ApiModel("修改密码参数")
public class UpdatePasswordParam {
    @ApiModelProperty("密码")
    public String passWord;
    @ApiModelProperty("新密码")
    public String newPassWord;
    @ApiModelProperty("再次输入密码")
    public String checkPassWord;
}
