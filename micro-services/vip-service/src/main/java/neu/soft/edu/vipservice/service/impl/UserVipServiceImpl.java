package neu.soft.edu.vipservice.service.impl;

import neu.soft.edu.vipservice.mapper.UserVipMapper;
import neu.soft.edu.vipservice.pojo.UserVip;
import neu.soft.edu.vipservice.pojo.Vip;
import neu.soft.edu.vipservice.service.UserVipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserVipServiceImpl implements UserVipService {
    @Autowired
    UserVipMapper userVipMapper;

    @Override
    public UserVip queryUserVipByUserId(Integer userId) {
        return userVipMapper.selectUserVipByUserId(userId);
    }

    @Override
    public Vip queryVipByUserId(Integer userId) {
        return userVipMapper.selectVipByUserId(userId);
    }

    @Override
    public Boolean insertUserVip(UserVip userVip) {
        return userVipMapper.insertUserVip(userVip);
    }

    @Override
    public Boolean updateUserVip(UserVip userVip) {
        return userVipMapper.updateUserVip(userVip);
    }
}
