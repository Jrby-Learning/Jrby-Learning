package com.neusoftedu.admin.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;


@NoArgsConstructor
@AllArgsConstructor
@Data
public class ManagerRole {
    @Id
    private Integer id;             //ID
    private Integer managerId;      //管理员ID
    private Integer roleId;         //角色ID
}
