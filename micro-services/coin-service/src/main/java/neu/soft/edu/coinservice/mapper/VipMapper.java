package neu.soft.edu.coinservice.mapper;


import neu.soft.edu.coinservice.pojo.Vip;
import org.mapstruct.Mapper;

import java.util.List;

@org.apache.ibatis.annotations.Mapper
@Mapper
public interface VipMapper {
    //查询所有VIP信息
    public List<Vip> selectAllVip();

    //根据vipId查询VIP
    public Vip selectVipById(Integer vipId);
}
