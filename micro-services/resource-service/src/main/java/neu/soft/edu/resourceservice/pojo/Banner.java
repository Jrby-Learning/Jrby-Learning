package neu.soft.edu.resourceservice.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Banner {
    @Id
    private Integer bannerId;
    private String courseName;
    private Integer courseId;
    private String bannerUrl;
    private Boolean bannerState;
    private Boolean deleteState;
}
