package neu.soft.edu.vipservice.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

/**
 * VIP详情表
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Vip {
    @Id
    private Integer vipId;
    private String vipName;
    private String vipMark;
    private String vipIcon;
    private Integer timeLength;
    private Integer price;
    private Integer coin;
    private Boolean vipState;
    private Boolean deleteState;
}
