package com.neusoftedu.admin.mapper;

import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;
import com.neusoftedu.admin.pojo.AccessLog;

import java.util.List;


@Repository
@Mapper
public interface AccessLogMapper {
    //添加访问日志
    public Boolean insertAccessLog(AccessLog accessLog);

    //分页所有日志
    List<AccessLog> queryAllLog();

    //查询日志数量
    Integer queryAllCount();

    //搜索日志信息
    List<AccessLog> queryLog(AccessLog accessLog);

    //搜索日志数量
    Integer queryCount(AccessLog accessLog);
}