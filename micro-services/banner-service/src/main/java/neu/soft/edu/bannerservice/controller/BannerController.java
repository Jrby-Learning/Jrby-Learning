package neu.soft.edu.bannerservice.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import neu.soft.edu.bannerservice.pojo.Banner;
import neu.soft.edu.bannerservice.service.BannerService;
import neu.soft.edu.bannerservice.util.tools.PropertiesUtil;
import neu.soft.edu.bannerservice.util.tools.ResultVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 轮播图
 */
@RestController
@RequestMapping("/banner")
@Api(tags = "轮播图详情接口")
public class BannerController {
    @Autowired
    BannerService bannerService;
    //后台服务器地址
    String adminAddress = PropertiesUtil.getAdminAddress();


    // 获取轮播图信息
    @GetMapping("/info")
    @ApiOperation("查询轮播图详情")
    public ResultVO queryVips() {
        List<Banner> banners = bannerService.queryAllBanner();
        banners.forEach(banner -> banner.setBannerUrl(adminAddress+banner.getBannerUrl()));
        return ResultVO.success("轮播图查询成功",banners);
    }
}
