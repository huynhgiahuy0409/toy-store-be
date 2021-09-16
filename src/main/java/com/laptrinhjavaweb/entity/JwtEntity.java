package com.laptrinhjavaweb.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "token")
public class JwtEntity extends BaseEntity {
	@Column(columnDefinition = "TEXT")
	private String token;
	@Column
	private Date tokenExpirationDate;

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
		return "TokenEntity [token=" + token + ", tokenExpirationDate=" + tokenExpirationDate + "]";
	}

}
