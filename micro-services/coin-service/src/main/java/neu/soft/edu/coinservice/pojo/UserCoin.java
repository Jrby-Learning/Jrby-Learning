package neu.soft.edu.coinservice.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 用户积分表
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class UserCoin {
    private Integer id;         //记录id
    private Integer userId;     //用户ID
    private Integer userCoin;   //积分数量
}
