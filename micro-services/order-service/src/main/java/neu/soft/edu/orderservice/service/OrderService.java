package neu.soft.edu.orderservice.service;

import neu.soft.edu.orderservice.pojo.Order;
import java.util.List;

public interface OrderService {
    //获取用户所有订单
    public List<Order> queryOrderByUserId(Integer userId, int pageNum, int pageSize);

    //获取用户订单总数
    public Integer queryCountByUserId(Integer userId);

    //根据id获取具体订单
    public List<Order> queryOrderById(Integer orderId);

    //添加订单
    public Boolean addOrder(Order order);

    //更新订单
    public Boolean updateOrder(Order order);
}
