package com.laptrinhjavaweb.repository;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.laptrinhjavaweb.entity.FavoriteProductEntity;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.entity.UserEntity;

public interface FavoriteProductRepository
		extends JpaRepository<FavoriteProductEntity, Long>, JpaSpecificationExecutor<FavoriteProductEntity> {
	FavoriteProductEntity findByUserAndProduct(UserEntity user, ProductEntity product);
	
}
