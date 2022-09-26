package neu.soft.edu.courseservice.service;

import neu.soft.edu.courseservice.pojo.StudyRecord;

import java.util.List;
public interface StudyRecordService {
    // 通过用户id查询学习记录
    public List<StudyRecord> queryRecordByUserId(Integer userId, int pageNum, int pageSize);

    // 添加学习记录
    public Boolean addStudyRecord(StudyRecord studyRecord);

    // 删除学习记录
    public Boolean updateStudyRecord(StudyRecord studyRecord);

    // 清除用户全部学习记录
    public Boolean clearAllRecord(Integer userId);

    //判断学习记录是否存在
    public Boolean queryRecordExist(Integer userId,Integer courseId);

    //查询总数
    public Integer queryCount(Integer userId);
}
