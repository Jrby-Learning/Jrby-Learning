package neu.soft.edu.resourceservice.mapper;

import neu.soft.edu.resourceservice.pojo.ResourceList;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@org.apache.ibatis.annotations.Mapper
@org.mapstruct.Mapper
public interface ResourceListMapper {
    //查询所有学习资源
    public List<ResourceList> selectAllResource();

    //查询学习资源总数
    public Integer queryCount();

    //根据学习资源名字查询
    public List<ResourceList> selectAllResourceByName(String resourceName);

    //根据学习资源名字查询总数
    public Integer queryCountByName(String resourceName);

    //根据资源id查询
    public ResourceList selectResourceById(Integer resourceId);
}
