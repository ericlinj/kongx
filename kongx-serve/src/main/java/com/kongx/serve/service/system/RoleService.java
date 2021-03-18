package com.kongx.serve.service.system;

import com.github.pagehelper.Page;
import com.kongx.common.core.entity.PaginationSupport;
import com.kongx.common.core.entity.UserInfo;
import com.kongx.serve.entity.system.RoleMenuParas;
import com.kongx.serve.entity.system.RoleServiceEntity;
import com.kongx.serve.entity.system.RoleServiceReq;
import com.kongx.serve.entity.system.SystemRole;
import com.kongx.serve.entity.system.SystemRoleFunction;
import com.kongx.serve.mapper.RoleMapper;
import com.kongx.serve.service.IBaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service("roleService")
public class RoleService implements IBaseService<SystemRole, Integer> {

    @Autowired
    private RoleMapper roleMapper;

    public Optional updateRoleMenu(RoleMenuParas roleMenuParas) {
        //1. delete
        //2. 批量插入
        this.roleMapper.deleteRoleMenu(roleMenuParas.getSystemRole().getId());
        List<SystemRoleFunction> systemRoleFunctionList = new ArrayList<>();
        roleMenuParas.getItems().forEach((systemFunction -> {
            systemRoleFunctionList
                    .add(new SystemRoleFunction(roleMenuParas.getSystemRole().getId(), systemFunction.getId(), "n"));
        }));
        roleMenuParas.getHalfItems().forEach(systemFunction ->
                systemRoleFunctionList
                        .add(new SystemRoleFunction(roleMenuParas.getSystemRole().getId(), systemFunction.getId(),
                                "y")));
        return Optional.ofNullable(this.roleMapper.batchInsertRoleMenu(systemRoleFunctionList));
    }

    /**
     * 更新角色-服务（数据角色）
     * 先删后插，全量更新
     *
     * @param roleServiceParas
     * @return
     */
    public Optional updateRoleService(RoleServiceReq roleServiceParas) {
        int roleId = roleServiceParas.getSystemRole().getId();
        this.roleMapper.deleteRoleService(roleId);
        List<RoleServiceEntity> roleServiceEntries = new ArrayList<>();
        Map<String, List<RoleServiceEntity>> rsMap = roleServiceParas.getRoleServiceEntitiesMap();
        if (rsMap != null && !rsMap.isEmpty()) {
            for (String profile : rsMap.keySet()) {
                List<RoleServiceEntity> rslist = rsMap.get(profile);
                if (rslist != null && rslist.size() > 0) {
                    for (RoleServiceEntity sItem : rslist) {
                        sItem.setRoleId(roleId);
                        sItem.setProfile(profile);
                        roleServiceEntries.add(sItem);
                    }
                }
            }
        }
        return Optional.ofNullable(this.roleMapper.batchInsertRoleService(roleServiceEntries));
    }

    public Optional findMenuByRoleId(Integer roleId) {
        return Optional.ofNullable(this.roleMapper.findMenuByRoleId(roleId));
    }


    public Optional findServicesByRoleId(int roleId) {
        List<RoleServiceEntity> rslist = this.roleMapper.findServiceByRoleId(roleId);
        Map<String, List<String>> serviceMap = new HashMap<>();
        if (rslist != null && rslist.size() > 0) {
            for (RoleServiceEntity rsItem : rslist) {
                String profile = rsItem.getProfile();
                if (!serviceMap.containsKey(profile)) {
                    serviceMap.put(profile, new ArrayList<>());
                }
                serviceMap.get(profile).add(rsItem.getService());
            }
        }
        return Optional.ofNullable(serviceMap);
    }

    @Override
    public PaginationSupport findByPage(SystemRole entity) {
        PaginationSupport paginationSupport = new PaginationSupport();
        Page page = this.roleMapper.findByPage(entity.getStart(), entity.getLimit(), entity);
        paginationSupport.setItems(page);
        paginationSupport.setPageSize(entity.getLimit());
        paginationSupport.setTotalCount(Integer.valueOf(page.getTotal() + ""));
        return paginationSupport;
    }

    @Override
    public void add(SystemRole entity, UserInfo userInfo) {
        entity.setCreator(userInfo.getName());
        entity.setCreate_at(new Date());
        this.roleMapper.insert(entity);
    }

    @Override
    public void update(SystemRole entity, UserInfo userInfo) {
        entity.setModifier(userInfo.getName());
        entity.setModify_at(new Date());
        this.roleMapper.update(entity);
    }

    @Override
    public SystemRole findById(Integer id) {
        return this.roleMapper.findById(id);
    }


}
