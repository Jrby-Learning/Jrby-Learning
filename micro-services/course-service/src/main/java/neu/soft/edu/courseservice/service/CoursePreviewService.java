package neu.soft.edu.courseservice.service;

import neu.soft.edu.courseservice.pojo.CoursePreview;
import java.util.List;

public interface CoursePreviewService {
    //查询所有课程预告
    public List<CoursePreview> queryAllCourse();

    //将课程预告过期的下架
    public Boolean closeExpiration();
}
