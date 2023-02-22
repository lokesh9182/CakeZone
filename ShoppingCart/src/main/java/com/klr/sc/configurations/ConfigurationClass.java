package com.klr.sc.configurations;


import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.client.HttpServerErrorException;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@EnableWebMvc
@Configuration
@ComponentScan("com.klr.sc")
public class ConfigurationClass implements WebMvcConfigurer{
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/ddd/**").addResourceLocations("/resources/");
		WebMvcConfigurer.super.addResourceHandlers(registry);
	}
	
	
	@Bean
	public InternalResourceViewResolver viewResolver() {
	InternalResourceViewResolver viewResolver=new InternalResourceViewResolver();
	viewResolver.setPrefix("/WEB-INF/views/");
	viewResolver.setSuffix(".jsp");
	return viewResolver;

	}
	
	@Bean
	public JdbcTemplate template() {
		return new JdbcTemplate(dataSource());
	}
	
	public DataSource dataSource() {		
	DriverManagerDataSource ds= new DriverManagerDataSource();
	ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
	ds.setUrl("jdbc:mysql://localhost:3306/shoppingcart?useSSL=false");
	ds.setUsername("root");
	ds.setPassword("LokesH#428");
	return ds;
	
	}
	

	
	
	
	
	
}
