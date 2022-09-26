package neu.soft.edu.resourceservice.feign.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

import java.util.Date;

/**
 * 积分记录表
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class CoinRecord {
    @Id
    private Integer recordId;   //记录id
    private Integer userId;     //用户id
    private Date recordTime;    //添加时间
    private String vary;        //积分变化
    private String remark;      //备注、原因
}
