package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.entity.ShoppingCartEntity;
import com.laptrinhjavaweb.entity.UserEntity;

public interface IShoppingCartService {
	ShoppingCartEntity save(ShoppingCartEntity shoppingCart);

	ShoppingCartEntity findByUserAndStatus(UserEntity user, int status);
}
