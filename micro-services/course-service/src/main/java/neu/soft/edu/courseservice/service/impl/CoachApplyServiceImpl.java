package neu.soft.edu.courseservice.service.impl;

import com.github.pagehelper.PageHelper;
import neu.soft.edu.courseservice.mapper.CoachApplyMapper;
import neu.soft.edu.courseservice.pojo.CoachApply;
import neu.soft.edu.courseservice.service.CoachApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class CoachApplyServiceImpl implements CoachApplyService {
    @Autowired
    CoachApplyMapper coachApplyMapper;

    @Override
    public List<CoachApply> queryCoachApplyByUserId(Integer userId, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return coachApplyMapper.selectCoachApplyByUserId(userId);
    }

    @Override
    public Integer queryCountByUserId(Integer userId) {
        return coachApplyMapper.queryCountByUserId(userId);
    }

    @Override
    public CoachApply queryOnlyCoachApply(Integer userId, Integer courseId) {
        return coachApplyMapper.selectOnlyCoachApply(userId,courseId);
    }

    @Override
    public CoachApply queryCoachApplyById(Integer coachId) {
        return coachApplyMapper.selectCoachApplyById(coachId);
    }

    @Override
    public Boolean addCoachApply(CoachApply coachApply) {
        coachApply.setCoachTime(new Date());
        return coachApplyMapper.insertCoachApply(coachApply);
    }

    @Override
    public Boolean updateCoachApply(CoachApply coachApply) {
        return coachApplyMapper.updateCoachApply(coachApply);
    }

    @Override
    public Boolean startedClasses() {
        return coachApplyMapper.startedClasses();
    }
}
