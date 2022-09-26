package neu.soft.edu.courseservice.mapper;

import neu.soft.edu.courseservice.pojo.Teacher;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;

@org.apache.ibatis.annotations.Mapper
@org.mapstruct.Mapper
public interface TeacherMapper {
    //根据Id查询讲师信息
    public Teacher selectTeacherById(Integer teacherId);
}
