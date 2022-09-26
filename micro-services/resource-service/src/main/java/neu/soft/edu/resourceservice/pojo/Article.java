package neu.soft.edu.resourceservice.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

import java.util.Date;

/**
 * 文章表实体类
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Article {
    @Id
    private Integer articleId;
    private String articleTitle;
    private Integer readingCount;
    private Date publishTime;
    private String text;
    private String coverUrl;
    private String typeName;
    private Boolean publishState;
    private Boolean auditState;
    private String reprintUrl;      //转载链接
    private String publisher;       //发布人
    private Integer publisherId;
    private Boolean deleteState;
    private Boolean directory;      //是否存在目录
}
