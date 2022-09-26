package neu.soft.edu.bannerservice.mapper;

import neu.soft.edu.bannerservice.pojo.Banner;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 轮播图表
 */

@Mapper
@org.mapstruct.Mapper
public interface BannerMapper {
    //查询所有轮播图信息
    public List<Banner> selectAllBanner();
}
