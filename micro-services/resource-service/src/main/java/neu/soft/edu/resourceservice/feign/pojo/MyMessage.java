package neu.soft.edu.resourceservice.feign.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * 我的消息
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class MyMessage {
    private Integer messageId;  //消息id
    private Integer userId;     //用户ID
    private String title;       //消息标题
    private String content;     //消息内容
    private Date publishTime;   //发布时间
    private Boolean readState;  //阅读状态
    private String url;         //url 链接
    private Boolean deleteState;    //删除状态
}
