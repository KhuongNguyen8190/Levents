package pc04390.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import pc04390.interception.LoggerInterceptor;


@Configuration
public class InterceptorConfig implements WebMvcConfigurer{
	@Autowired
	LoggerInterceptor loggerInterceptor;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(loggerInterceptor).addPathPatterns("/*", "/**");
		
//		registry.addInterceptor(aut)
//		.addPathPatterns("/account/edit", "/account/chgpwd", "/order/**", "/admin/**")
//		.excludePathPatterns("/assets/**", "/admin/home/index");
	}
	
	
}
