package com.laptrinhjavaweb.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.OrderItemEntity;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.entity.ShoppingCartEntity;

public interface OrderItemRepository extends JpaRepository<OrderItemEntity, Long> {
	OrderItemEntity findByShoppingCartId(long shoppingCartId);

	OrderItemEntity findByShoppingCartAndProduct(ShoppingCartEntity sc, ProductEntity p);
	
	
}
