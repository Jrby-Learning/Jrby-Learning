package neu.soft.edu.messageservice.service;

import neu.soft.edu.messageservice.pojo.SystemMessage;

import java.util.List;

public interface SystemMessageService {
    //查询所有消息
    public List<SystemMessage> queryAllMessage(int pageNum, int pageSize);

    //查询总数
    public Integer queryCount();
}
