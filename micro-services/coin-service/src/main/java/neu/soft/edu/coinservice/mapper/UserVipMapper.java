package neu.soft.edu.coinservice.mapper;

import neu.soft.edu.coinservice.pojo.UserVip;
import neu.soft.edu.coinservice.pojo.Vip;
import org.apache.ibatis.annotations.Mapper;

@Mapper
@org.mapstruct.Mapper
public interface UserVipMapper {
    //通过用户Id获取用户VIP信息
    public UserVip selectUserVipByUserId(Integer userId);

    //根据用户Id获取VIP信息
    public Vip selectVipByUserId(Integer userId);

    //插入会员信息
    public Boolean insertUserVip(UserVip userVip);

    //修改信息
    public Boolean updateUserVip(UserVip userVip);
}
