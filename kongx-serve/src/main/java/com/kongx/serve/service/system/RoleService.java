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
import org.apache.commons.lang3.StringUtils;
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
        if (roleServiceParas.getRoleId() != null && StringUtils.isNotBlank(roleServiceParas.getProfile())
                && roleServiceParas.getServiceList() != null && roleServiceParas.getServiceList().size() > 0) {
            long roleId = roleServiceParas.getRoleId();
            String profile = roleServiceParas.getProfile();
            this.roleMapper.deleteRoleService(Integer.parseInt(roleId + ""), profile);
            List<RoleServiceEntity> roleServiceEntries = new ArrayList<>();

            for(String ss:roleServiceParas.getServiceList()){
                RoleServiceEntity roleservice = new RoleServiceEntity();
                roleservice.setRoleId(Integer.parseInt(roleId+""));
                roleservice.setService(ss);
                roleservice.setProfile(profile);

                roleServiceEntries.add(roleservice);
            }

            return Optional.ofNullable(this.roleMapper.batchInsertRoleService(roleServiceEntries));
        }
        return null;
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

    public void addRoleService(Integer roleId, String service, String profile) {
        RoleServiceEntity roleServiceEntity = new RoleServiceEntity();
        roleServiceEntity.setRoleId(roleId);
        roleServiceEntity.setService(service);
        roleServiceEntity.setProfile(profile);
        List<RoleServiceEntity> list = new ArrayList<>(1);
        list.add(roleServiceEntity);
        this.roleMapper.batchInsertRoleService(list);
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


    public List<Integer> findDataRuleIdsByUserId(String userId) {
        return this.roleMapper.findDataRuleIdsByUserId(userId);
    }

    public void removeRoleService(Integer roleId, String serviceName, String profile) {
        this.roleMapper.removeRoleService(roleId, serviceName, profile);
    }
}
