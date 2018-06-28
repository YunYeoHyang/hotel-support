package com.czxy.hotel.web.config;

import com.github.pagehelper.PageHelper;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.annotation.Bean;
import tk.mybatis.spring.mapper.MapperScannerConfigurer;

import javax.sql.DataSource;
import java.util.Properties;

public class MyBatisConfiguration {

    /**
     * 配置session工厂
     * @param dataSource
     * @return
     * @throws Exception
     */
    @Bean
    public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception{
        //1 创建 factoryBean
        SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
        //2 设置数据
        // 2.1 数据源
        factoryBean.setDataSource(dataSource);

        // 2.2 驼峰命名
        Configuration configuration = new Configuration();
        configuration.setMapUnderscoreToCamelCase(true);
        factoryBean.setConfiguration(configuration);

        // 2.3 分页插件
        PageHelper pageHelper = new PageHelper();
        Properties props = new Properties();
        props.setProperty("dialect", "mysql");
        props.setProperty("rowBoundsWithCount", "true");
        pageHelper.setProperties(props);
        factoryBean.setPlugins(new Interceptor[] {pageHelper});

        //3 通过factorybean获得对应
        return factoryBean.getObject();
    }
    /**
     * 映射扫描器
     * @return
     */
    @Bean
    public MapperScannerConfigurer mapperScannerConfigurer(){
        //1 创建
        MapperScannerConfigurer mapperScanner = new MapperScannerConfigurer();
        //2设置包
        mapperScanner.setBasePackage("com.czxy.hotel.dao");

        return mapperScanner;
    }
}
