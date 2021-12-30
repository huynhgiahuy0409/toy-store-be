package com.laptrinhjavaweb.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.laptrinhjavaweb.filter.JWTRequestFilter;

/*Thêm filter security config*/
/*@EnableGlobalMethodSecurity(prePostEnabled = true) giúp kiểm soát security đến từng phương thức.*/
/*prePostEnabled = true sử dụng được 2 annotation @PreAuthorize và @PostAuthorize để phân quyền.*/
//@Configuration
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	CustomUserDetailsService userDetailsService;

	@Autowired
	private JWTRequestFilter jwtRequestFilter;

	@Autowired
	private JwtAuthenticationEntryPoint unauthorizedHandler;

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	@Override
	public AuthenticationManager authenticationManagerBean() throws Exception {
		// TODO Auto-generated method stub
		return super.authenticationManagerBean();
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService);
	}

	@Override
	public void configure(HttpSecurity http) throws Exception {
		http.csrf().disable().authorizeRequests().antMatchers("/admin").hasAnyAuthority("SUPPER_USER")
				.antMatchers("/api/authenticate").permitAll().and().exceptionHandling()
				.authenticationEntryPoint(unauthorizedHandler);
//				.sessionManagement()
//				.sessionCreationPolicy(SessionCreationPolicy.STATELESS);
		http.addFilterBefore(jwtRequestFilter, UsernamePasswordAuthenticationFilter.class);
		
		
	}

}
