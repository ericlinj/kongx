package com.kongx.serve.entity.system;

import com.alibaba.fastjson.JSON;
import com.kongx.serve.entity.gateway.Service;
import lombok.Data;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Data
public class RoleServiceVO {
    private Long roleId;
    private Map<String, List<Service>> profileData4Service = new HashMap<>();


    public static void main(String[] args) {
        RoleServiceVO vo = new RoleServiceVO();
        vo.setRoleId(1111L);
        Map<String, String> map = new HashMap<>();
        Service service1 = new Service();
        service1.setName("mall-app-api");
        service1.setId("111");
        Service service2 = new Service();
        service2.setName("mall-web-api");
        service1.setId("112");

        Map<String, List<Service>> services = new HashMap<>();
        List<Service> list = new ArrayList<>();
        list.add(service1);
        list.add(service2);
        services.put("devall", list);
        vo.setProfileData4Service(services);


        System.out.println(JSON.toJSONString(vo));
    }
}
