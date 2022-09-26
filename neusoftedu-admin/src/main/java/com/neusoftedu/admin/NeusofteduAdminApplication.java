package com.neusoftedu.admin;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.neusoftedu.admin.mapper")
public class NeusofteduAdminApplication {
    public static void main(String[] args) {
        SpringApplication.run(NeusofteduAdminApplication.class, args);
    }
}
