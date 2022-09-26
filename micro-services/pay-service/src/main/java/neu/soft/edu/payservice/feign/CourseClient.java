package neu.soft.edu.payservice.feign;

import neu.soft.edu.payservice.feign.pojo.CoachApply;
import neu.soft.edu.payservice.feign.pojo.Course;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@FeignClient("course-service")
public interface CourseClient {
    @GetMapping("/course/querySpecial/{courseId}")
    public Course querySpecialCourseById(@PathVariable int courseId);

    @GetMapping("/course/queryOnlyCoach/{userId}/{courseId}")
    public CoachApply queryOnlyCoachApply(@PathVariable("userId") int userId, @PathVariable("courseId") int courseId);

    @PostMapping("/course/add/CoachApply")
    public Boolean addCoachApply(@RequestBody CoachApply coachApply);
}
