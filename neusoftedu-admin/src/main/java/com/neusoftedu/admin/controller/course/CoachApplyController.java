package com.neusoftedu.admin.controller.course;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import com.neusoftedu.admin.pojo.CoachApply;
import com.neusoftedu.admin.pojo.Order;
import com.neusoftedu.admin.service.course.CoachApplyService;
import com.neusoftedu.admin.service.marketing.OrderService;
import com.neusoftedu.admin.util.tools.ResultVO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/special/apply")
@Api(tags = "线下营申请报名操作接口")
public class CoachApplyController {
    public int courseId;
    @Autowired
    private CoachApplyService coachApplyService;
    @Autowired
    private OrderService orderService;

    @GetMapping("/sendCourseId")
    @ApiOperation("点击查看报名信息时将课程Id传过来")
    public String SendCourseId(@ApiParam("课程Id") String cId) {
        courseId = Integer.parseInt(cId);
        return "course/apply-info";
    }

    @GetMapping("list")
    @ResponseBody
    @ApiOperation("分页查询所有报名信息")
    public ResultVO ApplyPageList(@RequestParam int pageNum, @RequestParam int pageSize) {
        List<CoachApply> coachApplies = coachApplyService.queryAllPageApply(courseId, pageNum, pageSize);
        List<CoachApply> totalCoachApplies = coachApplyService.queryAllApply(courseId);
        Map<String, Object> data = new HashMap<>();
        data.put("list", coachApplies);
        data.put("total", totalCoachApplies.size());
        return ResultVO.success("查询成功", data);
    }


    //同意退课
    @GetMapping("/changeApply")
    @ResponseBody
    @ApiOperation("同意退课")
    public ResultVO changApply(@ApiParam("报名Id") int coachId) {
        CoachApply coachApply = coachApplyService.queryCoachApplyById(coachId);
        Order order = orderService.queryOrderById(coachApply.getUserId(), coachApply.getCourseId());
        String orderNo = order.getOrderNo();
        int payPrice = order.getPayPrice();
        int n = coachApplyService.updateApplyState(coachId);
        Map<String, Object> data = new HashMap<>();
        data.put("orderNo", orderNo);
        data.put("payPrice", payPrice);
        if (n == 1) {
            return ResultVO.success("修改成功", data);
        }
        return ResultVO.error("修改失败");
    }

    @PostMapping("/refuseApply")
    @ResponseBody
    @ApiOperation("拒绝退课")
    public ResultVO refuseApply(@ApiParam("报名Id") int coachId) {
        int n = coachApplyService.refuseReturnApply(coachId);
        if (n == 1) {
            return ResultVO.success("修改成功");
        }
        return ResultVO.error("修改失败");
    }
}
