package neu.soft.edu.courseservice.service;

import neu.soft.edu.courseservice.pojo.Teacher;

public interface TeacherService {
    //根据Id查询讲师信息
    public Teacher queryTeacherById(Integer teacherId);
}
