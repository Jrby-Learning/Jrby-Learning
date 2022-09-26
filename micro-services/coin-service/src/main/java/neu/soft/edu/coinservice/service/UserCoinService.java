package neu.soft.edu.coinservice.service;


import neu.soft.edu.coinservice.pojo.UserCoin;

/**
 * 用户积分service
 */
public interface UserCoinService {
    //添加用户积分
    public Boolean insertCoin(UserCoin userCoin);
    //更新用户积分
    public Boolean updateCoin(UserCoin userCoin);
    //查询用户积分
    public UserCoin queryCoinById(Integer userId);
}
