package com.neusoftedu.admin.service.user;

import com.neusoftedu.admin.pojo.ManagerRole;

import java.util.List;


public interface ManagerRoleService {
    public List<String> queryRole(Integer managerId);

    //根据managerId查询所有roleId
    List<Integer> queryRoleId(int managerId);

    //添加相应的管理员权限
    int addRole(List<ManagerRole> managerRoles);

    //根据managerId删除
    int deleteRole(int managerId);

    //根据managerId查询
    List<ManagerRole> queryByManagerId(int managerId);
}
