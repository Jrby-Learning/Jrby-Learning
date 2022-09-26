package neu.soft.edu.courseservice.service.impl;

import neu.soft.edu.courseservice.mapper.CoursePreviewMapper;
import neu.soft.edu.courseservice.pojo.CoursePreview;
import neu.soft.edu.courseservice.service.CoursePreviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class CoursePreviewServiceImpl implements CoursePreviewService {
    @Autowired
    CoursePreviewMapper coursePreviewMapper;

    @Override
    public List<CoursePreview> queryAllCourse() {
        return coursePreviewMapper.selectAllCourse();
    }

    @Override
    public Boolean closeExpiration() {
        return coursePreviewMapper.closeExpiration();
    }
}
