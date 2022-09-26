package neu.soft.edu.userservice.mapper;

import neu.soft.edu.userservice.pojo.AccessLog;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Mapper
@org.mapstruct.Mapper
public interface AccessLogMapper {
    //添加访问日志
    Boolean insertAccessLog(AccessLog accessLog);
}
