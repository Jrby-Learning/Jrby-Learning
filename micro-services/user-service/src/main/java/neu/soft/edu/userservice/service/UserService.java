package neu.soft.edu.userservice.service;

import neu.soft.edu.userservice.pojo.User;

public interface UserService {
    //添加用户
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
