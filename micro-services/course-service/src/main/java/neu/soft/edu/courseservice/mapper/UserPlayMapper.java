package neu.soft.edu.courseservice.mapper;

import neu.soft.edu.courseservice.pojo.UserPlay;
import org.apache.ibatis.annotations.Param;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;

@org.apache.ibatis.annotations.Mapper
@org.mapstruct.Mapper
public interface UserPlayMapper {
    //添加用户播放记录
    public Boolean insertPlayRecord(UserPlay userPlay);

    //更新用户播放记录
    public Boolean updatePlayRecord(UserPlay userPlay);

    //查询用户播放记录
    public UserPlay selectUserPlay(@Param("userId")Integer userId, @Param("courseId") Integer courseId);
}
