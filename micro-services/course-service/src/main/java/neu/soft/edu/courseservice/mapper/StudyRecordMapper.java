package neu.soft.edu.courseservice.mapper;

import neu.soft.edu.courseservice.pojo.StudyRecord;
import org.apache.ibatis.annotations.Param;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@org.apache.ibatis.annotations.Mapper
@org.mapstruct.Mapper
public interface StudyRecordMapper {
    // 通过用户id查询学习记录
    public List<StudyRecord> selectRecordByUserId(Integer userId);

    //判断学习记录是否存在
    public Boolean selectRecordExist(@Param("userId") Integer userId,@Param("courseId") Integer courseId);

    // 添加学习记录
    public Boolean insertRecord(StudyRecord studyRecord);

    // 删除学习记录
    public Boolean updateRecord(StudyRecord studyRecord);

    // 清除用户全部学习记录
    public Boolean clearAllRecord(Integer userId);

    //查询总数
    public Integer queryCount(Integer userId);
}
