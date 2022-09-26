package neu.soft.edu.userservice.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

import java.util.Date;

/**
 * 访问记录
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class AccessLog {
    @Id
    private Integer id;
    private String userAccount;
    private String userName;
    private String userType;
    private Date accessTime;
    private String ipAddress;
    private String city;
}
