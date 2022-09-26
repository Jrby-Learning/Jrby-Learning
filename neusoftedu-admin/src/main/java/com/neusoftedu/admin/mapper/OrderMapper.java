package com.neusoftedu.admin.mapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import com.neusoftedu.admin.pojo.Order;

import java.util.List;
@Mapper
@Component
public interface OrderMapper {
    //分页查询订单
    List<Order> queryPageOrder();
    //查询所有订单 统计数量
    List<Order> queryAllOrder();
    //搜索订单
    List<Order> searchOrder(Order order);
    //搜索订单  统计
    List<Order> totalSearchOrder(Order order);
    //通过用户Id和课程Id查询
    Order queryOrderById(@Param("userId")int userId, @Param("courseId")int courseId);
}
