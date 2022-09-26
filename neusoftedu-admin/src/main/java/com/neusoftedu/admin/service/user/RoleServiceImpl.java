package com.neusoftedu.admin.service.user;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.neusoftedu.admin.mapper.RoleMapper;
import com.neusoftedu.admin.pojo.Role;

import java.util.List;


@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleMapper roleMapper;

    @Override
    public List<Role> queryAllRole() {
        return roleMapper.queryAllRole();
    }

    @Override
    public List<Role> queryPageRole(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        return roleMapper.queryPageRole();
    }

    @Override
    public List<Role> searchRole(Role role, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        return roleMapper.searchRole(role);
    }

    @Override
    public List<Role> totalSearchRole(Role role) {
        return roleMapper.totalSearchRole(role);
    }

    @Override
    public int updateRole(Role role) {
        return roleMapper.updateRole(role);
    }

    @Override
    public Role queryRoleById(int roleId) {
        return roleMapper.queryRoleById(roleId);
    }

    @Override
    public int updateRoleState(int roleId) {
        return roleMapper.updateRoleState(roleId);
    }

    @Override
    public List<Role> queryUseAbleRole() {
        return roleMapper.queryUseAbleRole();
    }

    @Override
    public Integer queryRoleId(String roleName) {
        return roleMapper.queryRoleId(roleName);
    }

    @Override
    public List<String> queryRoleType() {
        return roleMapper.queryRoleType();
    }

    @Override
    public List<Role> queryRoleByRoleType(String roleType) {
        return roleMapper.queryRoleByRoleType(roleType);
    }
}
