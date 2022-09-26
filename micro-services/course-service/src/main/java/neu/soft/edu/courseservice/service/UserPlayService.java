package neu.soft.edu.courseservice.service;

import neu.soft.edu.courseservice.pojo.UserPlay;

public interface UserPlayService {
    //添加用户播放记录
    public Boolean addPlayRecord(UserPlay userPlay);

    //更新用户播放记录
    public Boolean updatePlayRecord(UserPlay userPlay);

    //查询用户播放记录
    public UserPlay queryUserPlay(Integer userId,Integer courseId);
}
