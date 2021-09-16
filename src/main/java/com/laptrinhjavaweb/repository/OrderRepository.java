package com.laptrinhjavaweb.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.OrderEntity;

public interface OrderRepository extends JpaRepository<OrderEntity, Long> {
	List<OrderEntity> findByUserId(long userId, Pageable pageable);
}
