package neu.soft.edu.resourceservice.service.impl;


import neu.soft.edu.resourceservice.mapper.BannerMapper;
import neu.soft.edu.resourceservice.pojo.Banner;
import neu.soft.edu.resourceservice.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BannerServiceImpl implements BannerService {
    @Autowired
    BannerMapper bannerMapper;

    @Override
    public List<Banner> queryAllBanner() {
        return bannerMapper.selectAllBanner();
    }
}
