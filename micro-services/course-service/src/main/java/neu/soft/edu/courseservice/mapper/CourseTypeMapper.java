package neu.soft.edu.courseservice.mapper;

import neu.soft.edu.courseservice.pojo.CourseType;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@org.apache.ibatis.annotations.Mapper
@org.mapstruct.Mapper
public interface CourseTypeMapper {
    //查询所有课程类别
    public List<CourseType> selectAllType();
}
