package neu.soft.edu.coinservice.service.impl;

import com.github.pagehelper.PageHelper;
import neu.soft.edu.coinservice.mapper.CoinRecordMapper;
import neu.soft.edu.coinservice.pojo.CoinRecord;
import neu.soft.edu.coinservice.service.CoinRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Date;
import java.util.List;

@Service
public class CoinRecordServiceImpl implements CoinRecordService {

    @Autowired
    CoinRecordMapper coinRecordMapper;

    @Override
    public Boolean insertRecord(CoinRecord coinRecord) {
        coinRecord.setRecordTime(new Date());
        return coinRecordMapper.insertRecord(coinRecord);
    }

    @Override
    public List<CoinRecord> queryRecordById(Integer userId, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return coinRecordMapper.queryRecordById(userId);
    }

    @Override
    public Integer queryCount(Integer userId) {
        return coinRecordMapper.queryCount(userId);
    }
}
