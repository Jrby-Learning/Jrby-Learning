package neu.soft.edu.courseservice.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

/**
 * 课程目录
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class CourseList {
    @Id
    private Integer listId;
    private String listName;
    private Integer courseId;
    private String courseName;
    private String videoUrl;
    private Integer timeMinute;
    private Integer timeSecond;
    private Boolean lockState;

}
