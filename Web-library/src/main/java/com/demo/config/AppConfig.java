package com.demo.config;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

@Configuration
@PropertySource("classpath:application.properties")
public class AppConfig {
	
	@Autowired
	private Environment env;
	
	public DataSource getDataSource() {
		BasicDataSource ds = new BasicDataSource();
		
		ds.setDriverClassName(env.getProperty("spring.datasource.driver-class-name"));
		ds.setUrl(env.getProperty("spring.datasource.url"));
		ds.setUsername(env.getProperty("spring.datasource.username"));
		ds.setPassword(env.getProperty("spring.datasource.password"));
		
		return ds;

    }
}
