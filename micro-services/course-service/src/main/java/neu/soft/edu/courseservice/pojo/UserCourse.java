package neu.soft.edu.courseservice.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

/**
 * 用户课程表
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class UserCourse {
    @Id
    private Integer studyId;
    private Integer userId;
    private Integer courseId;
    private Boolean deleteState;
}
