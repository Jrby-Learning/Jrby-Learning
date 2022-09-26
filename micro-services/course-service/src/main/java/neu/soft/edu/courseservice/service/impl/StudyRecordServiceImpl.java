package neu.soft.edu.courseservice.service.impl;

import com.github.pagehelper.PageHelper;
import neu.soft.edu.courseservice.mapper.StudyRecordMapper;
import neu.soft.edu.courseservice.pojo.StudyRecord;
import neu.soft.edu.courseservice.service.StudyRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Date;
import java.util.List;

@Service
public class StudyRecordServiceImpl implements StudyRecordService {
    @Autowired
    StudyRecordMapper studyRecordMapper;

    @Override
    public List<StudyRecord> queryRecordByUserId(Integer userId, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return studyRecordMapper.selectRecordByUserId(userId);
    }

    @Override
    public Boolean addStudyRecord(StudyRecord studyRecord) {
        studyRecord.setUpdateTime(new Date());
        return studyRecordMapper.insertRecord(studyRecord);
    }

    @Override
    public Boolean updateStudyRecord(StudyRecord studyRecord) {
        return studyRecordMapper.updateRecord(studyRecord);
    }

    @Override
    public Boolean clearAllRecord(Integer userId) {
        return studyRecordMapper.clearAllRecord(userId);
    }

    @Override
    public Boolean queryRecordExist(Integer userId, Integer courseId) {
        return studyRecordMapper.selectRecordExist(userId,courseId);
    }

    @Override
    public Integer queryCount(Integer userId) {
        return studyRecordMapper.queryCount(userId);
    }
}
