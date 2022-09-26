package neu.soft.edu.courseservice.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

import java.util.Date;

/**
 * 学习记录表
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class StudyRecord {
    @Id
    private Integer recordId;
    private Integer userId;
    private Integer courseId;
    private Boolean deleteState;
    private Date updateTime;
}
