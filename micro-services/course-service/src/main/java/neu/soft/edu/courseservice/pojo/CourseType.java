package neu.soft.edu.courseservice.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

/**
 * 课程类别
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class CourseType {
    @Id
    private Integer typeId;
    private String typeName;
    private String description;
    private Boolean typeState;
    private Boolean deleteState;
}
