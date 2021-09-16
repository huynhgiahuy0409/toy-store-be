package com.laptrinhjavaweb.dto.auth;

import com.laptrinhjavaweb.dto.JwtDTO;
import com.laptrinhjavaweb.dto.UserDTO;

public class AuthenticationResponseDTO {
	UserDTO user;
	JwtDTO jwt;

	public AuthenticationResponseDTO(UserDTO user, JwtDTO jwt) {
		super();
		this.user = user;
		this.jwt = jwt;
	}

	public UserDTO getUser() {
		return user;
	}

	public void setUser(UserDTO user) {
		this.user = user;
	}

	public JwtDTO getJwt() {
		return jwt;
	}

	public void setJwt(JwtDTO jwt) {
		this.jwt = jwt;
	}

	@Override
	public String toString() {
		return "AuthenticationResponseDTO [user=" + user + ", jwt=" + jwt + "]";
	}

}
