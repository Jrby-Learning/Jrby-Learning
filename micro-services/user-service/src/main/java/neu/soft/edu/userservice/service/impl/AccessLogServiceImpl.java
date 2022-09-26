package neu.soft.edu.userservice.service.impl;

import neu.soft.edu.userservice.mapper.AccessLogMapper;
import neu.soft.edu.userservice.pojo.AccessLog;
import neu.soft.edu.userservice.service.AccessLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccessLogServiceImpl implements AccessLogService {
    @Autowired
    AccessLogMapper accessLogMapper;

    @Override
    public Boolean addAccessLog(AccessLog accessLog) {
        return accessLogMapper.insertAccessLog(accessLog);
    }
}
