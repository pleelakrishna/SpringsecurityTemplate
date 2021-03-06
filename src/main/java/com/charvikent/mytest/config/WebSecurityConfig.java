package com.charvikent.mytest.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

 @Autowired 
 private UserDetailsService userDetailsService;
 
 @Override
 public void configure(AuthenticationManagerBuilder auth) throws Exception {    
	 auth.userDetailsService(userDetailsService);
	 //.passwordEncoder(passwordencoder());
 } 
 
 @Override
 protected void configure(HttpSecurity http) throws Exception {
   http.authorizeRequests()
  .antMatchers("/welcome").access("hasRole('ROLE_USER')")
  .anyRequest().permitAll()
  .and()
    .formLogin().loginPage("/login")
    .usernameParameter("username").passwordParameter("password")
    .defaultSuccessUrl("/welcome")
    .and()
    .logout().logoutSuccessUrl("/login?logout") 
   .and()
   .exceptionHandling().accessDeniedPage("/403")
  .and()
    .csrf();
 }
 
 @Bean(name="passwordEncoder")
    public PasswordEncoder passwordencoder(){
     return new BCryptPasswordEncoder();
    }
}