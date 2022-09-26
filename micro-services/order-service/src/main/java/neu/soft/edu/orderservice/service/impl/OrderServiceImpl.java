package neu.soft.edu.orderservice.service.impl;

import com.github.pagehelper.PageHelper;
import neu.soft.edu.orderservice.mapper.OrderMapper;
import neu.soft.edu.orderservice.pojo.Order;
import neu.soft.edu.orderservice.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Date;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    OrderMapper orderMapper;

    @Override
    public List<Order> queryOrderByUserId(Integer userId, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return orderMapper.selectOrderByUserId(userId);
    }

    @Override
    public Integer queryCountByUserId(Integer userId) {
        return orderMapper.queryCountByUserId(userId);
    }

    @Override
    public List<Order> queryOrderById(Integer orderId) {
        return orderMapper.selectOrderById(orderId);
    }

    @Override
    public Boolean addOrder(Order order) {
        order.setCreateTime(new Date());
        return orderMapper.insertOrder(order);
    }

    @Override
    public Boolean updateOrder(Order order) {
        return orderMapper.updateOrder(order);
    }
}
