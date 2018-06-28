package com.czxy.hotel.web.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@ComponentScan(basePackages = {"com.czxy.hotel.web.controller"})
@EnableWebMvc
public class MVCConfiguration extends WebMvcConfigurerAdapter {

    @Bean
    public InternalResourceViewResolver viewResolver(){

        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setSuffix(".jsp");

        return viewResolver;
    }

    @Bean
    public CommonsMultipartResolver multipartResolver(){

        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
        multipartResolver.setMaxUploadSize(5242880);
        multipartResolver.setMaxInMemorySize(4096);
        multipartResolver.setDefaultEncoding("UTF-8");

        return multipartResolver;
    }

}
