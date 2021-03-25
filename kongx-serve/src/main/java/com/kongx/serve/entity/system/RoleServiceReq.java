package com.kongx.serve.entity.system;

import com.kongx.common.utils.Jackson2Helper;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class RoleServiceReq {
    /**
     * 角色
     */
    private Long roleId;
    private String profile;
    /**
     * 该角色容许访问的服务列表信息
     * value:对应profile下的service列表
     */
    private List<String> serviceList = new ArrayList<>();


    public static void main(String[] args) {
        Long roleId = 999L;
        String profile = "devall";

        RoleServiceReq v = new RoleServiceReq();
        v.setRoleId(roleId);
        v.setProfile(profile);
        List<String> list = new ArrayList<>();
        list.add("aaaa");
        list.add("bbbb");
        v.setServiceList(list);

        System.out.println(Jackson2Helper.toJsonString(v));
    }
}
