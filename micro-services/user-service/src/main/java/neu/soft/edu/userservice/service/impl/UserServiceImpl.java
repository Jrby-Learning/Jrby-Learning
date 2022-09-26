package neu.soft.edu.userservice.service.impl;

import neu.soft.edu.userservice.mapper.UserMapper;
import neu.soft.edu.userservice.pojo.User;
import neu.soft.edu.userservice.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public User queryUserByAccount(String userAccount) {
        return userMapper.queryUserByAccount(userAccount);
    }

    @Override
    public User queryUserById(Integer userId) {
        return userMapper.queryUserById(userId);
    }

    @Override
    public Boolean insertUser(User user) {
        user.setRegisterTime(new Date());
        user.setUpdateTime(new Date());
        return userMapper.insertUser(user);
    }

    @Override
    public Boolean updateUser(User user) {
        user.setUpdateTime(new Date());
        return userMapper.updateUser(user);
    }

    @Override
    public User queryUserByPhone(String userPhone) {
        return userMapper.queryUserByPhone(userPhone);
    }
}
