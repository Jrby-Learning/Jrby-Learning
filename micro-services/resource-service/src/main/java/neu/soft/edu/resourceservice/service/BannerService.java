package neu.soft.edu.resourceservice.service;


import neu.soft.edu.resourceservice.pojo.Banner;
import java.util.List;

public interface BannerService {
    //查询所有轮播图信息
    public List<Banner> queryAllBanner();
}
