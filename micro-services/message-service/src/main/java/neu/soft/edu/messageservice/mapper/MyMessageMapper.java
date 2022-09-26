package neu.soft.edu.messageservice.mapper;

import neu.soft.edu.messageservice.pojo.MyMessage;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@org.apache.ibatis.annotations.Mapper
@org.mapstruct.Mapper
public interface MyMessageMapper {
    //添加我的信息
    public Boolean insertMyMessage(MyMessage myMessage);

    //更新我的信息
    public Boolean updateMyMessage(MyMessage myMessage);

    //所有消息状态设为已读
    public Boolean readAllMessage(Integer userId);

    //根据用户id查询个人消息
    public List<MyMessage> queryMessageById(Integer userId);

    //查询总数
    public Integer queryCount(Integer userId);

    //判断用户个人是否有新消息
    public Boolean newMessageState(Integer userId);
}
