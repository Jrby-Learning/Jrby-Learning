package neu.soft.edu.vipservice.mapper;

import neu.soft.edu.vipservice.pojo.Vip;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@org.apache.ibatis.annotations.Mapper
@org.mapstruct.Mapper
public interface VipMapper {
    //查询所有VIP信息
    public List<Vip> selectAllVip();

    //根据vipId查询VIP
    public Vip selectVipById(Integer vipId);
}
