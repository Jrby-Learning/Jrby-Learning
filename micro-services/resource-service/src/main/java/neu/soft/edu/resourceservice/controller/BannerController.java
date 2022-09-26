package neu.soft.edu.resourceservice.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import neu.soft.edu.resourceservice.pojo.Banner;
import neu.soft.edu.resourceservice.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import neu.soft.edu.resourceservice.util.tools.ResultVO;
import neu.soft.edu.resourceservice.util.tools.PropertiesUtil;

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
