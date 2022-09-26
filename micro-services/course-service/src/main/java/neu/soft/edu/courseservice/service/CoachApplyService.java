package neu.soft.edu.courseservice.service;

import neu.soft.edu.courseservice.pojo.CoachApply;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CoachApplyService {
    //根据用户id获取线下营报名信息
    public List<CoachApply> queryCoachApplyByUserId(Integer userId, int pageNum, int pageSize);

    //获取用户报名信息总数
    public Integer queryCountByUserId(Integer userId);

    //根据用户id和课程id获取
    public CoachApply queryOnlyCoachApply(@Param("userId") Integer userId, @Param("courseId") Integer courseId);

    //根据课程id查询课程
    public CoachApply queryCoachApplyById(Integer coachId);

    //添加报名信息
    public Boolean addCoachApply(CoachApply coachApply);

    //修改报名信息
    public Boolean updateCoachApply(CoachApply coachApply);

    //将已开课的报名信息 报名状态修改为4 （已开课）
    public Boolean startedClasses();
}
