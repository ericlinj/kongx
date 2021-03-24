package com.kongx.serve.controller.system;

import com.kongx.common.jsonwrapper.JsonHeaderWrapper;
import com.kongx.serve.entity.system.OperationLog;
import com.kongx.serve.entity.system.RoleServiceEntity;
import com.kongx.serve.entity.system.SystemFunction;
import com.kongx.serve.service.IBaseService;
import com.kongx.serve.service.system.RoleDataService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("system/data")
@Slf4j
public class DataController extends DefaultController<SystemFunction, Integer> {
    @Autowired
    private RoleDataService roleDataService;


    @RequestMapping("/role/service")
    public JsonHeaderWrapper roleService(@RequestBody RoleServiceEntity roleServiceEntity) {
        JsonHeaderWrapper jsonHeaderWrapper = init();
        try {
            jsonHeaderWrapper.setData(
                    this.roleDataService.findServciesByRoleId(Long.parseLong(roleServiceEntity.getRoleId() + "")));
        } catch (Exception e) {
            jsonHeaderWrapper.setErrmsg(e.getMessage());
            jsonHeaderWrapper.setStatus(JsonHeaderWrapper.StatusEnum.Failed.getCode());
        }
        return jsonHeaderWrapper;
    }

    @RequestMapping("/role/delById")
    public JsonHeaderWrapper delById(@RequestBody RoleServiceEntity roleServiceEntity) {
        JsonHeaderWrapper jsonHeaderWrapper = init();
        try {
            jsonHeaderWrapper.setData(this.roleDataService.delelteById(Long.parseLong(roleServiceEntity.getId() + "")));
        } catch (Exception e) {
            jsonHeaderWrapper.setErrmsg(e.getMessage());
            jsonHeaderWrapper.setStatus(JsonHeaderWrapper.StatusEnum.Failed.getCode());
        }
        return jsonHeaderWrapper;
    }


    @RequestMapping("/role/add")
    public JsonHeaderWrapper add(@RequestBody RoleServiceEntity roleServiceEntity) {
        JsonHeaderWrapper jsonHeaderWrapper = init();
        try {
            jsonHeaderWrapper.setData(this.roleDataService.add(roleServiceEntity));
        } catch (Exception e) {
            jsonHeaderWrapper.setErrmsg(e.getMessage());
            jsonHeaderWrapper.setStatus(JsonHeaderWrapper.StatusEnum.Failed.getCode());
        }
        return jsonHeaderWrapper;
    }


    @Override
    @Resource(name = "systemFunctionService")
    protected void setBaseService(IBaseService iBaseService) {
        this.baseService = iBaseService;
    }

    @Override
    protected OperationLog.OperationTarget operationTarget() {
        return OperationLog.OperationTarget.SYSTEM_FUNCTION;
    }
}

