package com.laptrinhjavaweb.dto.auth;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class UserPrincipal extends User {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long userId;

	public UserPrincipal(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

}
