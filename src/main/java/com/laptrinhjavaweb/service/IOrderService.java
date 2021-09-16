package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.laptrinhjavaweb.dto.OrderDTO;
import com.laptrinhjavaweb.entity.OrderEntity;

public interface IOrderService {
	OrderDTO save(OrderEntity orderEntity);

	OrderEntity saveAndFlush(OrderEntity orderEntity);

	List<OrderEntity> findByUserId(long userId, Pageable pageable);
}
