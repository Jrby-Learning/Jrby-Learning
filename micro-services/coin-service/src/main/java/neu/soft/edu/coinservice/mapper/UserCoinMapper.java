package neu.soft.edu.coinservice.mapper;

import neu.soft.edu.coinservice.pojo.UserCoin;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;


@org.apache.ibatis.annotations.Mapper
@org.mapstruct.Mapper
public interface UserCoinMapper {
    //添加用户积分
    public Boolean insertCoin(UserCoin userCoin);
    //更新用户积分
    public Boolean updateCoin(UserCoin userCoin);
    //查询用户积分
    public UserCoin queryCoinById(Integer userId);
}
