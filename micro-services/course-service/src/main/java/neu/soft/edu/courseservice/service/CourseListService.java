package neu.soft.edu.courseservice.service;

import neu.soft.edu.courseservice.pojo.CourseList;
import java.util.List;

public interface CourseListService {
    //根据课程Id查询课程目录
    public List<CourseList> queryListByCourseId(Integer courseId);

    //根据目录Id查询课程目录
    public  CourseList queryListById(Integer listId);
}
