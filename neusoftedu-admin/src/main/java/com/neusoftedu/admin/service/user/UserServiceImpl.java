package com.neusoftedu.admin.service.user;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.neusoftedu.admin.mapper.UserMapper;
import com.neusoftedu.admin.pojo.User;

import java.util.List;


@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public User queryUserByName(String userName) {
        return userMapper.queryUserByName(userName);
    }

    @Override
    public List<User> queryPageUser(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        return userMapper.queryPageUser();
    }

    @Override
    public List<User> queryAllUser() {
        return userMapper.queryAllUser();
    }

    @Override
    public int updateLockState(int userId) {
        return userMapper.updateLockState(userId);
    }

    @Override
    public List<User> searchUser(User user, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        return userMapper.searchUser(user);
    }

    @Override
    public List<User> totalSearchUser(User user) {
        return userMapper.totalSearchUser(user);
    }
}
