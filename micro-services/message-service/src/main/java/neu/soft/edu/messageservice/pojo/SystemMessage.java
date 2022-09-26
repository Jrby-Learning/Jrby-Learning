package neu.soft.edu.messageservice.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

import java.util.Date;

/**
 * 系统消息
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class SystemMessage {
    @Id
    private Integer messageId;
    private String title;
    private String content;
    private Integer publisherId;
    private String publisher;
    private Date publishTime;
    private String url;
    private Boolean deleteState;
}
