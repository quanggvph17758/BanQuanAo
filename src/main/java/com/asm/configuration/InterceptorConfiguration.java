package com.asm.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@Configuration
public class InterceptorConfiguration implements WebMvcConfigurer {

	@Autowired
	private com.asm.interceptor.LogInterceptor LogInterceptor;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(LogInterceptor)
		.addPathPatterns("/admin/**", "/member/**")
		.excludePathPatterns("/login", "/register");
	}
}
