package com.neusoftedu.admin.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;
import com.neusoftedu.admin.pojo.CoachApply;
import com.neusoftedu.admin.pojo.CountGroupApply;

import java.util.List;

@Mapper
@Component
public interface CoachApplyMapper {
    //根据课程Id 分页查询所有未删除的数据
    List<CoachApply> queryAllPageApply(int courseId);
    //根据报名Id查询
    CoachApply queryCoachApplyById(int coachId);
    //查询所有本课程数据  做统计
    List<CoachApply> queryAllApply(int courseId);
    //同意退课 改变报名状态
    int updateApplyState(int coachId);
    //拒绝退课
    int refuseReturnApply(int coachId);
    //分组统计线下营报名人数
    List<CountGroupApply> queryCountGroupApply();
    //查询线下营申请退课的用户
    List<CoachApply> queryRetreat();
}
