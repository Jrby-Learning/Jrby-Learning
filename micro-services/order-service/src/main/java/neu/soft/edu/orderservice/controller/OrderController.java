package neu.soft.edu.orderservice.controller;

import cn.dev33.satoken.stp.StpUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import neu.soft.edu.orderservice.pojo.Order;
import neu.soft.edu.orderservice.service.OrderService;
import neu.soft.edu.orderservice.util.tools.ResultVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping("/order")
@Api(tags = "订单相关接口")
public class OrderController {
    @Autowired
    OrderService orderService;

    // 获取用户订单信息
    @GetMapping("/user")
    @ApiOperation("获取用户个人的订单信息")
    public ResultVO queryArticle(@RequestParam(name = "pageNum", defaultValue = "1") int pageNum,
                                 @RequestParam(name = "pageSize", defaultValue = "5") int pageSize) {
        int userId  = StpUtil.getLoginIdAsInt();
        List<Order> orders = orderService.queryOrderByUserId(userId,pageNum,pageSize);
        if(orders!=null){
            Integer total = orderService.queryCountByUserId(userId);
            HashMap<String, Object> data = new HashMap<>();
            data.put("list",orders);
            data.put("total",total);
            return ResultVO.success("订单查询成功",data);
        }
        return ResultVO.error("订单获取失败");
    }

    // -----------------------------
    @PostMapping("/add")
    @ApiOperation("添加订单")
    public Boolean addOrder(@RequestBody Order order) {
        return orderService.addOrder(order);
    }
}
