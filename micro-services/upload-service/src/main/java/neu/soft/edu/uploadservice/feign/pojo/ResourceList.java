package neu.soft.edu.uploadservice.feign.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

/**
 * 学习资料
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class ResourceList {
    @Id
    private Integer resourceId;
    private String resourceName;
    private Integer coin;
    private String fileType;
    private String fileSize;
    private String uploader;
    private String fileUrl;
    private String remark;
    private Boolean publish_state;
    private Boolean auditState;
    private Boolean deleteState;
}
