package neu.soft.edu.courseservice.mapper;

import neu.soft.edu.courseservice.pojo.CourseList;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@org.apache.ibatis.annotations.Mapper
@org.mapstruct.Mapper
public interface CourseListMapper {
    //根据课程Id查询课程目录
    public List<CourseList> selectListByCourseId(Integer courseId);

    //根据目录Id查询课程目录
    public  CourseList selectListById(Integer listId);
}
