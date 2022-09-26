package com.neusoftedu.admin.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

import java.util.Date;


@NoArgsConstructor
@AllArgsConstructor
@Data
public class User {
    @Id
    private Integer userId;         //用户id
    private String userAccount;     //用户账号
    private String userName;        //用户名
    private String passWord;        //密码
    private String userGender;      //性别
    private String userPhone;       //手机号
    private Date registerTime;      //注册时间
    private Date loginTime;         //登录时间
    private Boolean lockedState;    //锁定状态
    private Boolean deleteState;    //删除状态
}
