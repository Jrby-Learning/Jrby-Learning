package neu.soft.edu.messageservice.service.impl;

import com.github.pagehelper.PageHelper;
import neu.soft.edu.messageservice.mapper.SystemMessageMapper;
import neu.soft.edu.messageservice.pojo.SystemMessage;
import neu.soft.edu.messageservice.service.SystemMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SystemMessageServiceImpl implements SystemMessageService {
    @Autowired
    SystemMessageMapper systemMessageMapper;

    @Override
    public List<SystemMessage> queryAllMessage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return systemMessageMapper.selectAllMessage();
    }

    @Override
    public Integer queryCount() {
        return systemMessageMapper.queryCount();
    }
}
