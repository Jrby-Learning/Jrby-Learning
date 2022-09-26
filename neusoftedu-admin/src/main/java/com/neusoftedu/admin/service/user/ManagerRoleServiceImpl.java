package com.neusoftedu.admin.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.neusoftedu.admin.mapper.ManagerRoleMapper;
import com.neusoftedu.admin.pojo.ManagerRole;

import java.util.List;


@Service
public class ManagerRoleServiceImpl implements ManagerRoleService {
    @Autowired
    ManagerRoleMapper managerRoleMapper;

    @Override
    public List<String> queryRole(Integer managerId) {
        return managerRoleMapper.queryRole(managerId);
    }

    @Override
    public List<Integer> queryRoleId(int managerId) {
        return managerRoleMapper.queryRoleId(managerId);
    }

    @Override
    public int addRole(List<ManagerRole> managerRoles) {
        return managerRoleMapper.addRole(managerRoles);
    }

    @Override
    public int deleteRole(int managerId) {
        return managerRoleMapper.deleteRole(managerId);
    }

    @Override
    public List<ManagerRole> queryByManagerId(int managerId) {
        return managerRoleMapper.queryByManagerId(managerId);
    }
}
