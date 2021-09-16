package com.laptrinhjavaweb.service.imp;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.entity.JwtEntity;
import com.laptrinhjavaweb.repository.TokenRepository;
import com.laptrinhjavaweb.service.ITokenService;

@Service
@Transactional
public class TokenService implements ITokenService {
	@Autowired
	private TokenRepository tokenRepository;

	public JwtEntity saveToken(JwtEntity token) {
		return this.tokenRepository.saveAndFlush(token);
	}

	@Override
	public JwtEntity findByToken(String token) {
		// TODO Auto-generated method stub
		return this.tokenRepository.findByToken(token);
	}

	@Override
	public boolean updateByToken(String token) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Long removeByToken(String token) {
		// TODO Auto-generated method stub
		return this.tokenRepository.removeByToken(token);
	}

}
