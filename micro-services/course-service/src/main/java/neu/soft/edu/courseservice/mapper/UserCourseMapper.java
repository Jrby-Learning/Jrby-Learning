package neu.soft.edu.courseservice.mapper;


import neu.soft.edu.courseservice.pojo.UserCourse;
import org.apache.ibatis.annotations.Param;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@org.apache.ibatis.annotations.Mapper
@org.mapstruct.Mapper
public interface UserCourseMapper {
    // 通过用户id查询用户课程
    public List<UserCourse> selectCourseByUserId(Integer userId);

    // 添加用户课程
    public Boolean insertUserCourse(UserCourse userCourse);

    // 删除用户课程
    public Boolean updateUserCourse(UserCourse userCourse);

    //查询总数
    public Integer queryCount(Integer userId);

    //判断课程是否存在
    public Boolean selectCourseExist(@Param("userId") Integer userId, @Param("courseId") Integer courseId);
}
