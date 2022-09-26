package com.neusoftedu.admin.service.marketing;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.neusoftedu.admin.mapper.VipMapper;
import com.neusoftedu.admin.pojo.Vip;
import com.neusoftedu.admin.pojo.DataModel;

import java.util.List;

@Service
public class VipServiceImpl implements VipService {
    @Autowired
    private VipMapper vipMapper;

    @Override
    public List<Vip> queryPageVip(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        return vipMapper.queryPageVip();
    }

    @Override
    public List<Vip> queryAllVip() {
        return vipMapper.queryAllVip();
    }

    @Override
    public Vip queryByVipId(int vipId) {
        return vipMapper.queryByVipId(vipId);
    }

    @Override
    public int addVip(Vip vip) {
        return vipMapper.addVip(vip);
    }

    @Override
    public int updateVip(Vip vip) {
        return vipMapper.updateVip(vip);
    }

    @Override
    public int updateVipState(int vipId) {
        return vipMapper.updateVipState(vipId);
    }

    @Override
    public int deleteVip(int vipId) {
        return vipMapper.deleteVip(vipId);
    }

    @Override
    public DataModel countVIPUser() {
        return vipMapper.countVIPUser();
    }
}
