package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.entity.JwtEntity;

public interface ITokenService {
	JwtEntity findByToken(String token);

	JwtEntity saveToken(JwtEntity token);

	Long removeByToken(String token);

	boolean updateByToken(String token);
}
