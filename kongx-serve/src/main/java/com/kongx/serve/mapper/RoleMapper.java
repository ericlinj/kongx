package com.kongx.serve.mapper;

import com.github.pagehelper.Page;
import com.kongx.serve.entity.system.RoleServiceEntity;
import com.kongx.serve.entity.system.SystemRole;
import com.kongx.serve.entity.system.SystemRoleFunction;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface RoleMapper {
    @Select({"<script>", "SELECT * FROM kongx_system_role  where 1=1 ",
            "<when test='job.name!=null'>",
            " and (name like CONCAT('%',#{job.name},'%'))",
            "</when>",
            "order by create_at desc", "</script>"})
    @Results({
            @Result(property = "roleType", column = "role_type"),
            @Result(property = "sortOrder", column = "sort_order"),
            @Result(property = "useYn", column = "use_yn"),
    })
    Page<SystemRole> findByPage(@Param("pageNum") int pageNum,
                                @Param("pageSize") int pageSize, @Param("job") SystemRole project);

    @Insert({"insert into kongx_system_role(name,code,role_type,sort_order,use_yn,remark,creator,create_at) values (",
            "#{name},#{code},",
            "#{roleType},#{sortOrder},#{useYn},#{remark},",
            "#{creator}, #{create_at, jdbcType=TIMESTAMP}",
            ")"})
    int insert(SystemRole project);

    @Update({"update kongx_system_role set " +
            "name=#{name},role_type=#{roleType},sort_order=#{sortOrder},use_yn=#{useYn},",
            "modifier=#{modifier},modify_at=#{modify_at, jdbcType=TIMESTAMP},",
            "remark=#{remark} where id=#{id} "})
    int update(SystemRole project);

    @Select({"select * from kongx_system_role  where id = #{id} "})
    @Results({
            @Result(property = "roleType", column = "role_type"),
            @Result(property = "sortOrder", column = "sort_order"),
            @Result(property = "useYn", column = "use_yn"),
    })
    SystemRole findById(int id);

    @Delete("delete from kongx_system_role_function where role_id=#{id}")
    int deleteRoleMenu(int id);

    @Delete("delete from kongx_system_role_service where role_id=#{id}")
    int deleteRoleService(int id);

    @Insert({"<script>",
            "insert into kongx_system_role_function(role_id,function_id,half_checked) values",
            "<foreach collection='menus' item='param' index='index' separator=','>",
            " (#{param.roleId}, #{param.functionId},#{param.halfChecked} )",
            "</foreach>"
            , "</script>"})
    int batchInsertRoleMenu(@Param("menus") List<SystemRoleFunction> menus);

    @Insert({"<script>",
            "INSERT INTO `kongx_serve`.`kongx_system_role_service`(`role_id`, `service`, `profile`) VALUES ",
            "<foreach collection='roleServiceEntries' item='param' index='index' separator=','>",
            " (#{param.roleId}, #{param.service},#{param.profile} )",
            "</foreach>"
            , "</script>"})
    int batchInsertRoleService(@Param("roleServiceEntries") List<RoleServiceEntity> roleServiceEntries);

    @Select("select function_id from kongx_system_role_function where role_id=#{id} and half_checked='n'")
    List<String> findMenuByRoleId(int id);

    @Select("select * from kongx_system_role_service where role_id=#{id}")
    List<RoleServiceEntity> findServiceByRoleId(int id);
}
