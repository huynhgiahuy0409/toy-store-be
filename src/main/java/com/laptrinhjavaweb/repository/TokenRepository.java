package com.laptrinhjavaweb.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.JwtEntity;

public interface TokenRepository extends JpaRepository<JwtEntity, Long> {
	JwtEntity findByToken(String token);

	Long removeByToken(String token);
}