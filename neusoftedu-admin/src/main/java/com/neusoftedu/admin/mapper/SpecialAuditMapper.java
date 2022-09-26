package com.neusoftedu.admin.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import com.neusoftedu.admin.pojo.SpecialAudit;

import java.util.List;

@Mapper
@Component
public interface SpecialAuditMapper {
    //分页查询线下营审核信息
    List<SpecialAudit> queryPageAudit();
    //查询所有线下营审核信息  统计数量
    List<SpecialAudit> queryTotalAudit();
    //添加线下营课程审核信息
    int addSpecialAuditInfo(SpecialAudit specialAudit);
    //设置课程审核状态
    int updateCourseAudit(@Param("courseId")int courseId, @Param("auditState")int auditState);
    //根据课程名称搜索
    List<SpecialAudit> searchCourseAudit(SpecialAudit specialAudit);
    //根据课程名称搜索  统计
    List<SpecialAudit> totalSearchCourseAudit(SpecialAudit specialAudit);
    //添加线下营审核信息
    int addSpecialAuditRemark(SpecialAudit specialAudit);
    //查询拒绝原因
    String queryRefuseCause(int courseId);
    //通过审核Id查询
    SpecialAudit querySpecialAuditByID(int auditId);
}
