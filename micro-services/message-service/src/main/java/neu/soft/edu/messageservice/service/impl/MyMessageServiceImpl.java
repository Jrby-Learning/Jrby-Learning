package neu.soft.edu.messageservice.service.impl;

import com.github.pagehelper.PageHelper;
import neu.soft.edu.messageservice.mapper.MyMessageMapper;
import neu.soft.edu.messageservice.pojo.MyMessage;
import neu.soft.edu.messageservice.service.MyMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Date;
import java.util.List;

/**
 * 我的消息service
 */
@Service
public class MyMessageServiceImpl implements MyMessageService {
    @Autowired
    MyMessageMapper myMessageMapper;

    @Override
    public Boolean insertMyMessage(MyMessage myMessage) {
        myMessage.setPublishTime(new Date());
        return myMessageMapper.insertMyMessage(myMessage);
    }

    @Override
    public Boolean updateMyMessage(MyMessage myMessage) {
        return myMessageMapper.updateMyMessage(myMessage);
    }

    @Override
    public Boolean readAllMessage(Integer userId) {
        return myMessageMapper.readAllMessage(userId);
    }

    @Override
    public List<MyMessage> queryMessageById(Integer userId,int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return myMessageMapper.queryMessageById(userId);
    }

    @Override
    public Integer queryCount(Integer userId) {
        return myMessageMapper.queryCount(userId);
    }

    @Override
    public Boolean newMessageState(Integer userId) {
        return myMessageMapper.newMessageState(userId);
    }
}
