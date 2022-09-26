package neu.soft.edu.resourceservice.service;

import neu.soft.edu.resourceservice.pojo.ResourceList;
import java.util.List;

public interface ResourceListService {
    //查询所有学习资源
    public List<ResourceList> queryAllResource(int pageNum, int pageSize);

    //查询学习资源总数
    public Integer queryCount();

    //根据学习资源名字查询
    public List<ResourceList> queryAllResourceByName(String resourceName,int pageNum, int pageSize);

    //根据学习资源名字查询总数
    public Integer queryCountByName(String resourceName);

    //根据资源id查询
    public ResourceList queryResourceById(Integer resourceId);
}
