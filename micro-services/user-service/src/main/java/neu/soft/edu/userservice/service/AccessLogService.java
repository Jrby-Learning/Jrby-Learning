package neu.soft.edu.userservice.service;

import neu.soft.edu.userservice.pojo.AccessLog;

public interface AccessLogService {
    //添加访问日志
    public Boolean addAccessLog(AccessLog accessLog);
}
