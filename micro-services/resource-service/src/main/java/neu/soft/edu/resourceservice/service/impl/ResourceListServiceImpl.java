package neu.soft.edu.resourceservice.service.impl;

import com.github.pagehelper.PageHelper;
import neu.soft.edu.resourceservice.mapper.ResourceListMapper;
import neu.soft.edu.resourceservice.pojo.ResourceList;
import neu.soft.edu.resourceservice.service.ResourceListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResourceListServiceImpl implements ResourceListService {
    @Autowired
    ResourceListMapper resourceListMapper;

    @Override
    public List<ResourceList> queryAllResource(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return resourceListMapper.selectAllResource();
    }

    @Override
    public Integer queryCount() {
        return resourceListMapper.queryCount();
    }

    @Override
    public List<ResourceList> queryAllResourceByName(String resourceName,int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return resourceListMapper.selectAllResourceByName(resourceName);
    }

    @Override
    public Integer queryCountByName(String resourceName) {
        return resourceListMapper.queryCountByName(resourceName);
    }

    @Override
    public ResourceList queryResourceById(Integer resourceId) {
        return resourceListMapper.selectResourceById(resourceId);
    }
}
