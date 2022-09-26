package com.neusoftedu.admin.service.log;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.neusoftedu.admin.mapper.AccessLogMapper;
import com.neusoftedu.admin.pojo.AccessLog;

import java.util.List;


@Service
public class AccessLogServiceImpl implements AccessLogService {
    @Autowired
    AccessLogMapper accessLogMapper;

    @Override
    public Boolean addAccessLog(AccessLog accessLog) {
        return accessLogMapper.insertAccessLog(accessLog);
    }

    @Override
    public List<AccessLog> queryAllLog(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        return accessLogMapper.queryAllLog();
    }

    @Override
    public Integer queryAllCount() {
        return accessLogMapper.queryAllCount();
    }

    @Override
    public List<AccessLog> queryLog(AccessLog accessLog, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        return accessLogMapper.queryLog(accessLog);
    }

    @Override
    public Integer queryCount(AccessLog accessLog) {
        return accessLogMapper.queryCount(accessLog);
    }
}
