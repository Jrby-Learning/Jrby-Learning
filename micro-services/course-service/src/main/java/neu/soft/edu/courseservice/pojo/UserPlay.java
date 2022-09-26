package neu.soft.edu.courseservice.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

/**
 * 播放记录表
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class UserPlay {
    @Id
    private Integer id;
    private Integer userId;
    private Integer courseId;
    private Integer listId;
    private Double playTime;
}
