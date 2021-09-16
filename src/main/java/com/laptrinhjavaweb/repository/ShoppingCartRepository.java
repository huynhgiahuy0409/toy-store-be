package com.laptrinhjavaweb.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.ShoppingCartEntity;
import com.laptrinhjavaweb.entity.UserEntity;

public interface ShoppingCartRepository extends JpaRepository<ShoppingCartEntity, Long> {
	ShoppingCartEntity findByUserAndStatus(UserEntity user, int status);
}
