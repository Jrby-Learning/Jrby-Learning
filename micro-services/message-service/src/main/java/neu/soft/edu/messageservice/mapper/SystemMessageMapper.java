package neu.soft.edu.messageservice.mapper;

import neu.soft.edu.messageservice.pojo.SystemMessage;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;


import java.util.List;

@org.apache.ibatis.annotations.Mapper
@org.mapstruct.Mapper
public interface SystemMessageMapper {
    //查询所有消息
    public List<SystemMessage> selectAllMessage();

    //查询总数
    public Integer queryCount();
}
