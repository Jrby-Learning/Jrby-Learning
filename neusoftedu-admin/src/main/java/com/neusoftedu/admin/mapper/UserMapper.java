package com.neusoftedu.admin.mapper;

import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;
import com.neusoftedu.admin.pojo.User;

import java.util.List;

@Repository
@Mapper
public interface UserMapper {
     User queryUserByName(String userName);
    //分页查询未删除的所有用户
    List<User> queryPageUser();
    //查询所有用户统计数量
    List<User> queryAllUser();
    //修改用户的锁定状态
    int updateLockState(int userId);
    //搜索用户
    List<User> searchUser(User user);
    //搜索用户   统计
    List<User> totalSearchUser(User user);
}
