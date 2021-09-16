package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;

import com.laptrinhjavaweb.entity.FavoriteProductEntity;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.entity.UserEntity;

public interface IFavoriteProductService {
	FavoriteProductEntity saveAndFlush(FavoriteProductEntity fp);

	FavoriteProductEntity findByUserAndProduct(UserEntity user, ProductEntity product);

	List<FavoriteProductEntity> findAll(Specification<FavoriteProductEntity> spec, Pageable pageable);

	long count(Specification<FavoriteProductEntity> spec);

	void delete(long id);
}
