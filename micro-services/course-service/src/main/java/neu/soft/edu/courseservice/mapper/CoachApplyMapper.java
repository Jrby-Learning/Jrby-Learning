package neu.soft.edu.courseservice.mapper;

import neu.soft.edu.courseservice.pojo.CoachApply;
import org.apache.ibatis.annotations.Param;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@org.apache.ibatis.annotations.Mapper
@org.mapstruct.Mapper
public interface CoachApplyMapper {
    //根据用户id获取线下营报名信息
    public List<CoachApply> selectCoachApplyByUserId(Integer userId);

    //获取用户报名信息总数
    public Integer queryCountByUserId(Integer userId);

    //根据用户id和课程id获取
    public CoachApply selectOnlyCoachApply(@Param("userId") Integer userId,@Param("courseId") Integer courseId);

    //根据课程id查询课程
    public CoachApply selectCoachApplyById(Integer coachId);

    //添加报名信息
    public Boolean insertCoachApply(CoachApply coachApply);

    //修改报名信息
    public Boolean updateCoachApply(CoachApply coachApply);

    //将已开课的报名信息 报名状态修改为4 （已开课）
    public Boolean startedClasses();
}
