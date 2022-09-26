package neu.soft.edu.courseservice.service.impl;

import neu.soft.edu.courseservice.mapper.CourseListMapper;
import neu.soft.edu.courseservice.pojo.CourseList;
import neu.soft.edu.courseservice.service.CourseListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class CourseListServiceImpl implements CourseListService {
    @Autowired
    CourseListMapper courseListMapper;

    @Override
    public List<CourseList> queryListByCourseId(Integer courseId) {
        return courseListMapper.selectListByCourseId(courseId);
    }

    @Override
    public CourseList queryListById(Integer listId) {
        return courseListMapper.selectListById(listId);
    }
}
