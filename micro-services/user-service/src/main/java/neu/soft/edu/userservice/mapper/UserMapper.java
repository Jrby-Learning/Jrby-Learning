package neu.soft.edu.userservice.mapper;

import neu.soft.edu.userservice.pojo.User;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@org.mapstruct.Mapper
public interface UserMapper {
    //注册用户
    public Boolean insertUser(User user);

    //更新信息
    public Boolean updateUser(User user);

    //根据Id查询用户
    public User queryUserById(Integer userId);

    //根据帐号查询用户
    public User queryUserByAccount(String userAccount);

    //根据手机号查询用户
    public User queryUserByPhone(String userPhone);
}
