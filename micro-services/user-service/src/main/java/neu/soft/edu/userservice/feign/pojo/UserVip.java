package neu.soft.edu.userservice.feign.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

import java.util.Date;

/**
 * 用户VIP
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class UserVip {
    @Id
    private Integer id;
    private Integer userId;
    private Integer vipId;
    private Date openTime;
    private Date expireTime;
    private Boolean deleteState;
}
