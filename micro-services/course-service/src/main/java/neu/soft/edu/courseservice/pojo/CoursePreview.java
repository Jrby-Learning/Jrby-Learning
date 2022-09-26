package neu.soft.edu.courseservice.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

import java.util.Date;

/**
 * 课程预告
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class CoursePreview {
    @Id
    private Integer previewId;
    private String  courseName;
    private String description;
    @JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd")
    private Date startTime;
    private String timeLength;
    private Integer teacherId;
    private String teacherName;
    private String teacherDes;
    private Boolean previewState;
    private Boolean deleteState;
}
