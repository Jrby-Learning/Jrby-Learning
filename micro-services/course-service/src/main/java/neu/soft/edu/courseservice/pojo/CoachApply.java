package neu.soft.edu.courseservice.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

import java.util.Date;

/**
 * 线下营报名表
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class CoachApply {
    @Id
    private Integer coachId;
    private Integer courseId;
    private String courseName;
    @JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd")
    private Date startTime;
    private Integer userId;
    private String userName;
    private String userPhone;
    private String userEmail;
    private Date coachTime;
    private Integer applyState;
    private Boolean deleteState;
}
