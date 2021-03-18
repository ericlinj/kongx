package com.kongx.serve.controller.system;


import com.kongx.common.jsonwrapper.JsonHeaderWrapper;
import com.kongx.serve.entity.system.OperationLog;
import com.kongx.serve.entity.system.RoleMenuParas;
import com.kongx.serve.entity.system.RoleServiceReq;
import com.kongx.serve.entity.system.SystemRole;
import com.kongx.serve.service.IBaseService;
import com.kongx.serve.service.system.RoleService;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController("SystemRoleController")
@RequestMapping("system/role")
public class RoleController extends DefaultController<SystemRole, Integer> {

    @Resource(name = "roleService")
    private RoleService roleService;

    @Override
    @Resource(name = "roleService")
    protected void setBaseService(IBaseService iBaseService) {
        this.baseService = iBaseService;
    }

    @Override
    protected OperationLog.OperationTarget operationTarget() {
        return OperationLog.OperationTarget.SYSTEM_ROLE;
    }

    @RequestMapping(value = "/updateRoleMenu", method = RequestMethod.POST)
    public JsonHeaderWrapper updateRoleMenu(@RequestBody RoleMenuParas paras) {
        JsonHeaderWrapper jsonHeaderWrapper = init();
        try {
            jsonHeaderWrapper.setData(this.roleService.updateRoleMenu(paras));
        } catch (Exception e) {
            jsonHeaderWrapper.setErrmsg(e.getMessage());
            jsonHeaderWrapper.setStatus(JsonHeaderWrapper.StatusEnum.Failed.getCode());
        }
        return jsonHeaderWrapper;
    }


    @RequestMapping(value = "/updateRoleService", method = RequestMethod.POST)
    public JsonHeaderWrapper updateRoleService(@RequestBody RoleServiceReq paras) {
        JsonHeaderWrapper jsonHeaderWrapper = init();
        try {
            jsonHeaderWrapper.setData(this.roleService.updateRoleService(paras));
        } catch (Exception e) {
            jsonHeaderWrapper.setErrmsg(e.getMessage());
            jsonHeaderWrapper.setStatus(JsonHeaderWrapper.StatusEnum.Failed.getCode());
        }
        return jsonHeaderWrapper;
    }

    @RequestMapping(value = "/{roleId}/menu", method = RequestMethod.POST)
    public JsonHeaderWrapper findMenusByRoleId(@PathVariable int roleId) {
        JsonHeaderWrapper jsonHeaderWrapper = init();
        try {
            jsonHeaderWrapper.setData(this.roleService.findMenuByRoleId(roleId));
        } catch (Exception e) {
            jsonHeaderWrapper.setErrmsg(e.getMessage());
            jsonHeaderWrapper.setStatus(JsonHeaderWrapper.StatusEnum.Failed.getCode());
        }
        return jsonHeaderWrapper;
    }

    @RequestMapping(value = "/{roleId}/service", method = RequestMethod.POST)
    public JsonHeaderWrapper findServicesByRoleId(@PathVariable int roleId) {
        JsonHeaderWrapper jsonHeaderWrapper = init();
        try {
            jsonHeaderWrapper.setData(this.roleService.findServicesByRoleId(roleId));
        } catch (Exception e) {
            jsonHeaderWrapper.setErrmsg(e.getMessage());
            jsonHeaderWrapper.setStatus(JsonHeaderWrapper.StatusEnum.Failed.getCode());
        }
        return jsonHeaderWrapper;
    }
}
