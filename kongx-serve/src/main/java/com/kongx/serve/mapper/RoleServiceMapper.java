package com.kongx.serve.mapper;

import com.kongx.serve.entity.system.RoleServiceEntity;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RoleServiceMapper {

    @Delete("delete from kongx_system_role_service where id=#{id}")
    int deleteById(long id);

    int save(RoleServiceEntity roleServiceEntity);
}
