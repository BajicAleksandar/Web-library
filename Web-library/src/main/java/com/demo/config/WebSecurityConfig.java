package com.demo.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import com.demo.service.MyUserDetailsService;

@Configuration
@EnableWebSecurity
//@EnableJpaRepositories(basePackageClasses = UserRepository.class)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	
	@Autowired
	private MyUserDetailsService userDetailsService;

//	@Autowired
//	public DataSource dataSource;
//	@Autowired
//    private AuthProvider authProvider;
//	
//	@Override
//    @Bean
//    public AuthenticationManager authenticationManagerBean() throws Exception {
//        return super.authenticationManagerBean(); 
//    }

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	
		auth.userDetailsService(userDetailsService);
		//auth.authenticationProvider(authProvider);
//		auth.jdbcAuthentication().dataSource(dataSource)
//		.usersByUsernameQuery("select username, password, status from user HAVING username = ?")
//		.authoritiesByUsernameQuery("select u.username, a.authorities_id from user u join authorities a on u.user_id = a.authorities_id where username = ?");
		
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http 
		//.authenticationProvider(authProvider)
		.authorizeRequests()
		.antMatchers("/").permitAll()
		.antMatchers("/login").permitAll()
		.antMatchers("/registration").permitAll()
		//.antMatchers("/resources/**").permitAll()
		//.antMatchers("/").hasRole("STUDENT")
		.antMatchers("/teacher/**").hasAnyRole("TEACHER", "ADMIN")
		.antMatchers("/systems/**").hasRole("ADMIN")
		.and()
		.formLogin()
			.loginPage("/login").permitAll()
			.loginProcessingUrl("/authenticateTheUser")
			.defaultSuccessUrl("/home")
			.usernameParameter("username")
			.passwordParameter("password")
		.and()
		.logout().permitAll()
		.and()
		.exceptionHandling().accessDeniedPage("/access-denied");
		
	}

	
}
