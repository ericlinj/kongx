package com.kongx.serve.service.system;

import com.kongx.common.core.entity.UserInfo;
import com.kongx.serve.entity.system.RoleServiceEntity;
import com.kongx.serve.entity.system.RoleServiceVO;
import com.kongx.serve.mapper.RoleMapper;
import com.kongx.serve.mapper.RoleServiceMapper;
import com.kongx.serve.service.IBaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service("roleDataService")
public class RoleDataService implements IBaseService<RoleServiceEntity, Integer> {
    @Autowired
    private RoleServiceMapper roleServiceMapper;
    @Autowired
    private RoleMapper roleMapper;

    @Override
    public void add(RoleServiceEntity entity, UserInfo userInfo) {

    }

    @Override
    public void update(RoleServiceEntity entity, UserInfo userInfo) {

    }

    @Override
    public RoleServiceEntity findById(Integer id) {
        return null;
    }

    public RoleServiceVO findServciesByRoleId(Long roleId) {
        RoleServiceVO vo = new RoleServiceVO();
        vo.setRoleId(roleId);
        List<RoleServiceEntity> roleServices = roleMapper.findServiceByRoleId(Integer.parseInt(roleId+""));
        if (roleServices != null && roleServices.size() > 0) {
            Map<String, List<com.kongx.serve.entity.gateway.Service>> serviceMap = new HashMap<>();
            for (RoleServiceEntity item : roleServices) {
                String profile = item.getProfile();
                String service = item.getService();

                if (!serviceMap.containsKey(profile)) {
                    serviceMap.put(profile, new ArrayList<>());
                }

                com.kongx.serve.entity.gateway.Service seviceItem = new com.kongx.serve.entity.gateway.Service();
                seviceItem.setName(service);
                seviceItem.setId(item.getId()+"");
                serviceMap.get(profile).add(seviceItem);
            }
            vo.setProfileData4Service(serviceMap);
        }

        return vo;
    }

    public int delelteById(Long id) {
        return this.roleServiceMapper.deleteById(id);
    }

    public int add(RoleServiceEntity roleServiceEntity) {
        List<RoleServiceEntity> list = new ArrayList<>();
        list.add(roleServiceEntity);
        return this.roleMapper.batchInsertRoleService(list);
    }
}
