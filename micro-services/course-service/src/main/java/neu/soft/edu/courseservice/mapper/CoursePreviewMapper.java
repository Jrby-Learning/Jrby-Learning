package neu.soft.edu.courseservice.mapper;

import neu.soft.edu.courseservice.pojo.CoursePreview;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@org.apache.ibatis.annotations.Mapper
@org.mapstruct.Mapper
public interface CoursePreviewMapper {
    //查询所有课程预告
    public List<CoursePreview> selectAllCourse();

    //将课程预告过期的下架
    public Boolean closeExpiration();
}
