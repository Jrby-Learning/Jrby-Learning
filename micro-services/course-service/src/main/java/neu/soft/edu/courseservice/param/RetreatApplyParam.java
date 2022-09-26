package neu.soft.edu.courseservice.param;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * 申请退出线下营
 */
@ApiModel("申请退出线下营")
public class RetreatApplyParam {
    @ApiModelProperty("报名ID")
    public Integer coachId;
}
