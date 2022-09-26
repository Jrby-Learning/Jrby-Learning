package neu.soft.edu.coinservice.service;

import neu.soft.edu.coinservice.pojo.CoinRecord;
import java.util.List;

public interface CoinRecordService {
    //添加一条交易记录
    public Boolean insertRecord(CoinRecord coinRecord);

    //根据用户id查询个人积分变化记录
    public List<CoinRecord> queryRecordById(Integer userId, int pageNum, int pageSize);

    //查询总数
    public Integer queryCount(Integer userId);
}
