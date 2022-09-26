package neu.soft.edu.vipservice.service;

import neu.soft.edu.vipservice.pojo.UserVip;
import neu.soft.edu.vipservice.pojo.Vip;

public interface UserVipService {
    //通过用户Id获取
    public UserVip queryUserVipByUserId(Integer userId);

    //根据用户Id获取VIP信息
    public Vip queryVipByUserId(Integer userId);

    //插入会员信息
    public Boolean insertUserVip(UserVip userVip);

    //修改信息
    public Boolean updateUserVip(UserVip userVip);
}
