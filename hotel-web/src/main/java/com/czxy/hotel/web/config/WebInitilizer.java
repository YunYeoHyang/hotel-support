package com.czxy.hotel.web.config;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.*;
import java.util.EnumSet;

public class WebInitilizer implements WebApplicationInitializer {
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {

        AnnotationConfigWebApplicationContext applicationContext = new AnnotationConfigWebApplicationContext();
        applicationContext.register(MVCConfiguration.class);
        applicationContext.register(MyBatisConfiguration.class);
        applicationContext.register(SpringConfiguration.class);

        FilterRegistration.Dynamic filter = servletContext.addFilter("ceFilter", new CharacterEncodingFilter("UTF-8"));

        EnumSet<DispatcherType> request = EnumSet.of(DispatcherType.REQUEST, DispatcherType.FORWARD);
        filter.addMappingForUrlPatterns(request , true , "/*");

        ServletRegistration.Dynamic springmvc = servletContext.addServlet("springmvc", new DispatcherServlet(applicationContext));
        springmvc.addMapping("*.action");
        springmvc.setLoadOnStartup(2);
    }
}

