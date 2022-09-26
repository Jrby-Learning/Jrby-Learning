package neu.soft.edu.courseservice.service.impl;

import neu.soft.edu.courseservice.mapper.UserPlayMapper;
import neu.soft.edu.courseservice.pojo.UserPlay;
import neu.soft.edu.courseservice.service.UserPlayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserPlayServiceImpl implements UserPlayService {
    @Autowired
    UserPlayMapper userPlayMapper;

    @Override
    public Boolean addPlayRecord(UserPlay userPlay) {
        return userPlayMapper.insertPlayRecord(userPlay);
    }


    @Override
    public Boolean updatePlayRecord(UserPlay userPlay) {
        return userPlayMapper.updatePlayRecord(userPlay);
    }

    @Override
    public UserPlay queryUserPlay(Integer userId, Integer courseId) {
        return userPlayMapper.selectUserPlay(userId,courseId);
    }
}
