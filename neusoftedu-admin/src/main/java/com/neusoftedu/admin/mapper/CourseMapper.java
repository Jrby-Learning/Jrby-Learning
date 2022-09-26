package com.neusoftedu.admin.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import com.neusoftedu.admin.pojo.CountTeacherCourse;
import com.neusoftedu.admin.pojo.CountTypeCourse;
import com.neusoftedu.admin.pojo.Course;
import com.neusoftedu.admin.pojo.CourseTeacherConn;

import java.util.List;

@Mapper
@Component
public interface CourseMapper {
    //分页查询线上课程
    List<CourseTeacherConn> queryPageOnlineCourse();
    //查询所有线上课程
    List<Course> queryAllOnlineCourse();
    //查询所有线上且未发布的课程
    List<Course> queryAllAvalibCourse();
    //添加线上课程
    int addOnlineCourse(Course course);
    //修改线上课程信息
    int updateOnlineCourse(Course course);
    //删除课程
    int delCourse(int courseId);
    //根据条件查询线上课程
    List<CourseTeacherConn> selOnlineCourse(CourseTeacherConn courseTeacherConn);
    //根据条件查询线上课程 总数
    List<CourseTeacherConn> totalselOnlineCourse(CourseTeacherConn courseTeacherConn);
    //分页查询线下营课程
    List<CourseTeacherConn> queryPageSpecialClass();
    //添加线下营课程
    int addSpecialClass(Course course);
    //修改线下营课程
    int updateSpecialClass(Course course);
    //根据课程id查询
    Course queryByCourseId(int courseId);
    //查询所有线下营  统计数量
    List<Course> queryAllSpecialClass();
    //根据条件搜索线下营课程
    List<CourseTeacherConn> selSpecialCourse(CourseTeacherConn courseTeacherConn);
    //根据条件搜索线下营课程 总数
    List<CourseTeacherConn> totalSelSpecialCourse(CourseTeacherConn courseTeacherConn);
    //改变课程的发布状态
    int updatePublishState(@Param("courseId") int courseId,@Param("publisher")String publisher,@Param("publisherId")int publisherId);
    //改变课程的审核状态
    int updateOFFAuditState(@Param("courseId")int courseId,@Param("auditState")int auditState);
    //查询所有已发布且通过审核的课程
    List<Course> queryPublishedAuditedCourse();
    //根据课程Id得到课程的审核状态
    int queryAuditStateById(int courseId);
    //根据播放量获得前五名
    List<Course> queryTopFiveCourse();
    //查询不同讲师所讲授的课程
    List<CountTeacherCourse> queryTeacherCourse();
    //查询各专业类型的课程数量
    List<CountTypeCourse> queryTypeCourse();
}
