package com.laptrinhjavaweb.config;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.service.IUserService;

@Service
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private IUserService userService;

	@Autowired
	AuthenticationManager authenticate;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		System.out.println(username);
		UserEntity userEntity = userService.findByUsername(username);
		User user = null;
		if (userEntity != null) {
			List<SimpleGrantedAuthority> roles = new ArrayList<SimpleGrantedAuthority>();
			if (userEntity.getRoles() != null) {
				userEntity.getRoles().forEach(r -> {
					roles.add(new SimpleGrantedAuthority(r.getCode()));
					r.getPermissions().forEach(p -> {
						roles.add(new SimpleGrantedAuthority(p.getPermissionKey()));
					});
				});
			}
			user = new User(username, userEntity.getPassword(), roles);
			return user;
		}
		throw new UsernameNotFoundException("Tài khoản không tồn tại");
	}

	public UserEntity save(UserDTO userRegister) {
		UserEntity userEntity = new UserEntity();
		userEntity.setUsername(userRegister.getUsername());
		userEntity.setPassword(userRegister.getPassword());
		return this.userService.save(userEntity);
	}
}
