package com.laptrinhjavaweb.service.imp;

import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.OrderDTO;
import com.laptrinhjavaweb.entity.OrderEntity;
import com.laptrinhjavaweb.repository.OrderRepository;
import com.laptrinhjavaweb.service.IOrderService;

@Service
public class OrderService implements IOrderService {
	@Autowired
	private OrderRepository orderRepos;
	@Autowired
	private ModelMapper mp;

	@Override
	public OrderDTO save(OrderEntity orderEntity) {
		// TODO Auto-generated method stub
		return this.mp.map(this.orderRepos.save(orderEntity), OrderDTO.class);
	}

	@Override
	public List<OrderEntity> findByUserId(long userId, Pageable pageable) {
		// TODO Auto-generated method stub
		return this.orderRepos.findByUserId(userId, pageable);
	}

	@Override
	public OrderEntity saveAndFlush(OrderEntity orderEntity) {
		// TODO Auto-generated method stub
		return this.orderRepos.saveAndFlush(orderEntity);
	}

}
