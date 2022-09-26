package com.neusoftedu.admin.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Configuration //配置类
@EnableSwagger2// 开启Swagger2的自动配置
public class SwaggerConfig {
    //配置文档信息
    private ApiInfo apiInfo() {
        Contact contact = new Contact("zr", "https://github.com/CharlesZhuRen", "charleszhuren@gmail.com");
        return new ApiInfo(
                "Swagger文档", // 标题
                "东软教育管理员端-接口文档", // 描述
                "v1.0", // 版本
                "http://localhost:9000/doc.html", // 组织链接
                contact, // 联系人信息
                "Apache 2.0 许可", // 许可
                "许可链接", // 许可连接
                new ArrayList<>()// 扩展
        );
    }

    @Bean
    public Docket docketController() {
        return new Docket(DocumentationType.SWAGGER_2)
                .groupName("Controller")
                .apiInfo(apiInfo())
                .enable(true) //配置是否启用Swagger，如果是false，在浏览器将无法访问
                .ignoredParameterTypes(HttpSession.class, HttpServletRequest.class, HttpServletResponse.class)
                .select()// 通过.select()方法，去配置扫描接口,RequestHandlerSelectors配置如何扫描接口
                .apis(RequestHandlerSelectors.basePackage("com.neusoftedu.admin.controller"))
                // 配置如何通过path过滤
                .paths(PathSelectors.ant("/**"))
                .build();
    }

    @Bean
    public Docket docketView() {
        return new Docket(DocumentationType.SWAGGER_2)
                .groupName("View")
                .apiInfo(apiInfo())
                .enable(true) //配置是否启用Swagger，如果是false，在浏览器将无法访问
                .ignoredParameterTypes(HttpSession.class, HttpServletRequest.class, HttpServletResponse.class)
                .select()// 通过.select()方法，去配置扫描接口,RequestHandlerSelectors配置如何扫描接口
                .apis(RequestHandlerSelectors.basePackage("com.neusoftedu.admin.view"))
                // 配置如何通过path过滤
                .paths(PathSelectors.ant("/**"))
                .build();
    }
}