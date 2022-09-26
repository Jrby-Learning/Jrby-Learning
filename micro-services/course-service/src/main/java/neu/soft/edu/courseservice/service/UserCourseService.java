package neu.soft.edu.courseservice.service;

import neu.soft.edu.courseservice.pojo.UserCourse;
import java.util.List;

public interface UserCourseService {
    // 通过用户id查询用户课程
    public List<UserCourse> queryCourseByUserId(Integer userId, int pageNum, int pageSize);

    // 添加用户课程
    public Boolean addUserCourse(UserCourse userCourse);

    // 删除用户课程
    public Boolean updateUserCourse(UserCourse userCourse);

    //查询总数
    public Integer queryCount(Integer userId);

    //判断课程是否存在
    public Boolean queryCourseExist(Integer userId,Integer courseId);
}
