package com.neusoftedu.admin.controller.auditing;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.neusoftedu.admin.pojo.Course;
import com.neusoftedu.admin.pojo.SpecialAudit;
import com.neusoftedu.admin.pojo.Teacher;
import com.neusoftedu.admin.service.auditing.SpecialAuditService;
import com.neusoftedu.admin.service.course.CourseService;
import com.neusoftedu.admin.service.user.TeacherService;
import com.neusoftedu.admin.util.tools.ResultVO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/specialAudit")
@Api(tags = "线下营信息操作接口")
public class SpecialClassAuditController {
    @Autowired
    private SpecialAuditService specialAuditService;
    @Autowired
    private CourseService courseService;
    @Autowired
    private TeacherService teacherService;

    @GetMapping("/pageList")
    @ResponseBody
    @ApiOperation("分页查询线下营审核信息")
    public ResultVO queryPageSpecialAudit(@RequestParam int pageNum, @RequestParam int pageSize) {
        List<SpecialAudit> pageAudit = specialAuditService.queryPageAudit(pageNum, pageSize);
        List<SpecialAudit> totalAudit = specialAuditService.queryTotalAudit();
        Map<String, Object> data = new HashMap<>();
        data.put("list", pageAudit);
        data.put("total", totalAudit.size());
        if (totalAudit.size() != 0) {
            return ResultVO.success("查询成功", data);
        }
        return ResultVO.error("查询失败", data);
    }

    @PostMapping("/searchSpecialAudit")
    @ResponseBody
    @ApiOperation("搜索线下营审核信息")
    public ResultVO searchSpecialAudit(@ApiParam("课程名称") String courseName,
                                       @RequestParam int pageNum, @RequestParam int pageSize) {
        SpecialAudit specialAudit = new SpecialAudit();
        specialAudit.setCourseName(courseName);
        List<SpecialAudit> searchSpecialAudit = specialAuditService.searchCourseAudit(specialAudit, pageNum, pageSize);
        List<SpecialAudit> totalSearchSpecialAudit = specialAuditService.totalSearchCourseAudit(specialAudit);
        Map<String, Object> data = new HashMap<>();
        if (courseName.trim().equals("")) {
            List<SpecialAudit> totalAudit = specialAuditService.queryTotalAudit();
            data.put("total", totalAudit.size());
        } else {
            data.put("total", totalSearchSpecialAudit.size());
        }
        data.put("list", searchSpecialAudit);
        if (searchSpecialAudit.size() != 0) {
            return ResultVO.success("查询成功", data);
        }
        return ResultVO.error("查询失败", data);
    }

    @GetMapping("/goToSpecialDetails")
    @ApiOperation("跳转到线下营详情")
    public String goToSpecialDetails(@ApiParam("课程Id") int courseId, @ApiParam("审核Id") int auditId, Model model) {
        SpecialAudit specialAudit = specialAuditService.querySpecialAuditByID(auditId);
        int auditState = specialAudit.getAuditState();
        Course course = courseService.queryByCourseId(courseId);
        int teacherId = course.getTeacherId();
        Teacher teacher = teacherService.queryTeacherById(teacherId);
        model.addAttribute("course", course);
        model.addAttribute("teacher", teacher);
        model.addAttribute("auditState", auditState);
        return "auditing/special-details";
    }

    @PostMapping("/refuseCause")
    @ApiOperation("查询拒绝原因")
    @ResponseBody
    public ResultVO queryRefuseCause(@ApiParam("课程Id") int courseId) {
        String remark = specialAuditService.queryRefuseCause(courseId);
        return ResultVO.success(remark);
    }
}
