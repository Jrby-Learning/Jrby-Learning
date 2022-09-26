package com.neusoftedu.admin.service.marketing;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.neusoftedu.admin.mapper.OrderMapper;
import com.neusoftedu.admin.pojo.Order;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;

    @Override
    public List<Order> queryPageOrder(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        return orderMapper.queryPageOrder();
    }

    @Override
    public List<Order> queryAllOrder() {
        return orderMapper.queryAllOrder();
    }

    @Override
    public List<Order> searchOrder(Order order, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        return orderMapper.searchOrder(order);
    }

    @Override
    public List<Order> totalSearchOrder(Order order) {
        return orderMapper.totalSearchOrder(order);
    }

    @Override
    public Order queryOrderById(int userId, int courseId) {
        return orderMapper.queryOrderById(userId, courseId);
    }
}
