package com.laptrinhjavaweb.service;

import java.util.Set;

import com.laptrinhjavaweb.entity.OrderItemEntity;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.entity.ShoppingCartEntity;

public interface IOrderItemService {
	OrderItemEntity findByShoppingCartAndProduct(ShoppingCartEntity sc, ProductEntity product);

	void remove(OrderItemEntity orderEntity);

	/*----*/
	OrderItemEntity findByShoppingCartId(long shoppingCartId);

	OrderItemEntity save(OrderItemEntity orderItemEntity);

	OrderItemEntity findById(Long id);

}
