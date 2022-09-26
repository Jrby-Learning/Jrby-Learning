package neu.soft.edu.resourceservice.mapper;


import neu.soft.edu.resourceservice.pojo.Banner;
import org.apache.ibatis.annotations.Mapper;


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
