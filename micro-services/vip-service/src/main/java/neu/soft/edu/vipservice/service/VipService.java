package neu.soft.edu.vipservice.service;

import neu.soft.edu.vipservice.pojo.Vip;
import java.util.List;

/**
 * VIP详情
 */
public interface VipService {
    //查询所有VIP信息
    public List<Vip> queryAllVip();

    //根据vipId查询VIP
    public Vip queryVipById(Integer vipId);
}
