package neu.soft.edu.coinservice.mapper;

import neu.soft.edu.coinservice.pojo.CoinRecord;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@org.apache.ibatis.annotations.Mapper
@org.mapstruct.Mapper
public interface CoinRecordMapper {
    //添加一条交易记录
    public Boolean insertRecord(CoinRecord coinRecord);

    //根据用户id查询个人积分变化记录
    public List<CoinRecord> queryRecordById(Integer userId);

    //查询总数
    public Integer queryCount(Integer userId);
}
