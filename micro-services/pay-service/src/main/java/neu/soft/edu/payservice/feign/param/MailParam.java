package neu.soft.edu.payservice.feign.param;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;

import java.util.Map;

@ApiModel("邮件参数")
@AllArgsConstructor
public class MailParam {
    @ApiModelProperty("to")
    public String to;
    @ApiModelProperty("subject")
    public String subject;
    @ApiModelProperty("content")
    public String content;
    @ApiModelProperty("filePath")
    public String filepath;
    @ApiModelProperty("data")
    public Map<String,Object> data;
}
