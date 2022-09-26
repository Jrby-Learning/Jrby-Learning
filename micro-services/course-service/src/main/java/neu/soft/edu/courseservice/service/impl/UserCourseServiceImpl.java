package neu.soft.edu.courseservice.service.impl;

import com.github.pagehelper.PageHelper;
import neu.soft.edu.courseservice.mapper.UserCourseMapper;
import neu.soft.edu.courseservice.pojo.UserCourse;
import neu.soft.edu.courseservice.service.UserCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class UserCourseServiceImpl implements UserCourseService {
    @Autowired
    UserCourseMapper userCourseMapper;

    @Override
    public List<UserCourse> queryCourseByUserId(Integer userId, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return userCourseMapper.selectCourseByUserId(userId);
    }

    @Override
    public Boolean addUserCourse(UserCourse userCourse) {
        return userCourseMapper.insertUserCourse(userCourse);
    }

    @Override
    public Boolean updateUserCourse(UserCourse userCourse) {
        return userCourseMapper.updateUserCourse(userCourse);
    }

    @Override
    public Integer queryCount(Integer userId) {
        return userCourseMapper.queryCount(userId);
    }

    @Override
    public Boolean queryCourseExist(Integer userId, Integer courseId) {
        return userCourseMapper.selectCourseExist(userId,courseId);
    }
}
