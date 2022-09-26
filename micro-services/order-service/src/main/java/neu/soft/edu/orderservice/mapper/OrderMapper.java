package neu.soft.edu.orderservice.mapper;

import neu.soft.edu.orderservice.pojo.Order;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
@org.mapstruct.Mapper
public interface OrderMapper {
    //获取用户所有订单
    public List<Order> selectOrderByUserId(Integer userId);

    //获取用户订单总数
    public Integer queryCountByUserId(Integer userId);

    //根据id获取具体订单
    public List<Order> selectOrderById(Integer orderId);

    //添加订单
    public Boolean insertOrder(Order order);

    //更新订单
    public Boolean updateOrder(Order order);
}
