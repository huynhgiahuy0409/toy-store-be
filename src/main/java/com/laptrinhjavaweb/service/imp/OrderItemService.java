package com.laptrinhjavaweb.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.entity.OrderItemEntity;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.entity.ShoppingCartEntity;
import com.laptrinhjavaweb.repository.OrderItemRepository;
import com.laptrinhjavaweb.service.IOrderItemService;

@Service
public class OrderItemService implements IOrderItemService {
	@Autowired
	private OrderItemRepository orderItemRepos;

	@Override
	public OrderItemEntity findByShoppingCartId(long shoppingCartId) {
		// TODO Auto-generated method stub
		return this.orderItemRepos.findByShoppingCartId(shoppingCartId);
	}

	@Override
	public OrderItemEntity save(OrderItemEntity orderItemEntity) {
		// TODO Auto-generated method stub
		return this.orderItemRepos.save(orderItemEntity);
	}

	@Override
	public OrderItemEntity findById(Long id) {
		// TODO Auto-generated method stub
		return this.orderItemRepos.findOne(id);
	}

	@Override
	public void remove(OrderItemEntity orderEntity) {
		// TODO Auto-generated method stub
		this.orderItemRepos.delete(orderEntity);
	}

	@Override
	public OrderItemEntity findByShoppingCartAndProduct(ShoppingCartEntity sc, ProductEntity product) {
		// TODO Auto-generated method stub
		return this.orderItemRepos.findByShoppingCartAndProduct(sc, product);
	}

}
