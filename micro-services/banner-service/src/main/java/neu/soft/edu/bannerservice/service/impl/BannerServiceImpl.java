package neu.soft.edu.bannerservice.service.impl;

import neu.soft.edu.bannerservice.mapper.BannerMapper;
import neu.soft.edu.bannerservice.pojo.Banner;
import neu.soft.edu.bannerservice.service.BannerService;
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
