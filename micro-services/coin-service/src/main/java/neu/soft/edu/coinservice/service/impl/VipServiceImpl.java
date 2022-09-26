package neu.soft.edu.coinservice.service.impl;

import neu.soft.edu.coinservice.mapper.VipMapper;
import neu.soft.edu.coinservice.pojo.Vip;
import neu.soft.edu.coinservice.service.VipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class VipServiceImpl implements VipService {
    @Autowired
    VipMapper vipMapper;

    @Override
    public List<Vip> queryAllVip() {
        return vipMapper.selectAllVip();
    }

    @Override
    public Vip queryVipById(Integer vipId) {
        return vipMapper.selectVipById(vipId);
    }
}
