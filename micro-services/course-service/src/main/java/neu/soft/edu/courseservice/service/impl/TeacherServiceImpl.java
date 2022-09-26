package neu.soft.edu.courseservice.service.impl;

import neu.soft.edu.courseservice.mapper.TeacherMapper;
import neu.soft.edu.courseservice.pojo.Teacher;
import neu.soft.edu.courseservice.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    TeacherMapper teacherMapper;

    @Override
    public Teacher queryTeacherById(Integer teacherId) {
        return teacherMapper.selectTeacherById(teacherId);
    }
}
