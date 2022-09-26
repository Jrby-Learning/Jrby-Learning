package neu.soft.edu.courseservice.service.impl;

import neu.soft.edu.courseservice.mapper.CourseTypeMapper;
import neu.soft.edu.courseservice.pojo.CourseType;
import neu.soft.edu.courseservice.service.CourseTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class CourseTypeServiceImpl implements CourseTypeService {
    @Autowired
    CourseTypeMapper courseTypeMapper;
    @Override
    public List<CourseType> queryAllType() {
        return courseTypeMapper.selectAllType();
    }
}
