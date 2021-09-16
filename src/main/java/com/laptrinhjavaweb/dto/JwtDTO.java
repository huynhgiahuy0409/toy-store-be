package com.laptrinhjavaweb.dto;

import java.util.Date;

public class JwtDTO {
	private Long id;
	String token;
	Date tokenExpirationDate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public Date getTokenExpirationDate() {
		return tokenExpirationDate;
	}

	public void setTokenExpirationDate(Date tokenExpirationDate) {
		this.tokenExpirationDate = tokenExpirationDate;
	}

	@Override
	public String toString() {
		return "JwtDTO [token=" + token + ", expiredTime=" + tokenExpirationDate + "]";
	}

}
