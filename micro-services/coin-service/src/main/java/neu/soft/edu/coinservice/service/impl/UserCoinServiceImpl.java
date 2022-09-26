package neu.soft.edu.coinservice.service.impl;


import neu.soft.edu.coinservice.mapper.UserCoinMapper;
import neu.soft.edu.coinservice.pojo.UserCoin;
import neu.soft.edu.coinservice.service.UserCoinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserCoinServiceImpl implements UserCoinService {
    @Autowired
    UserCoinMapper userCoinMapper;

    @Override
    public Boolean insertCoin(UserCoin userCoin) {
        return userCoinMapper.insertCoin(userCoin);
    }

    @Override
    public Boolean updateCoin(UserCoin userCoin) {
        return userCoinMapper.updateCoin(userCoin);
    }

    @Override
    public UserCoin queryCoinById(Integer userId) {
        return userCoinMapper.queryCoinById(userId);
    }
}
