package neu.soft.edu.courseservice.service;

import neu.soft.edu.courseservice.pojo.CourseType;
import java.util.List;

public interface CourseTypeService {
    //查询所有课程类别
    public List<CourseType> queryAllType();
}
