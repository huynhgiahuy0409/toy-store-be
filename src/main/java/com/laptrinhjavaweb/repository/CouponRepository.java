package com.laptrinhjavaweb.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.CouponEntity;

public interface CouponRepository extends JpaRepository<CouponEntity, Long> {
	CouponEntity getOneByCode(String code);
}
