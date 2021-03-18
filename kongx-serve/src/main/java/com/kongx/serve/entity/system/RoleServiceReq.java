package com.kongx.serve.entity.system;

import com.kongx.common.utils.Jackson2Helper;
import lombok.Data;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Data
public class RoleServiceReq {
    /**
     * 角色
     */
    private SystemRole systemRole;
    /**
     * 该角色容许访问的服务列表信息
     * key:profile
     * value:对应profile下的service列表
     */
    private Map<String, List<RoleServiceEntity>> roleServiceEntitiesMap = new HashMap();


    public static void main(String[] args) {
        int roleId = 999;
        String profile = "devall";

        RoleServiceReq v = new RoleServiceReq();
        Map<String, List<RoleServiceEntity>> map = new HashMap<>();
        List<RoleServiceEntity> list = new ArrayList<>();
        RoleServiceEntity item = new RoleServiceEntity();
        item.setProfile(profile);
        item.setRoleId(roleId);

        list.add(item);
        map.put(profile, list);

        v.setRoleServiceEntitiesMap(map);
        SystemRole role = new SystemRole();
        role.setId(roleId);
        v.setSystemRole(role);

        System.out.println(Jackson2Helper.toJsonString(v));
    }
}
