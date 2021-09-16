package com.laptrinhjavaweb.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.entity.ShoppingCartEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.repository.ShoppingCartRepository;
import com.laptrinhjavaweb.service.IShoppingCartService;

@Service
public class ShoppingCartService implements IShoppingCartService {
	@Autowired
	ShoppingCartRepository shoppingCartRepos;

	@Override
	public ShoppingCartEntity save(ShoppingCartEntity shoppingCart) {
		// TODO Auto-generated method stub
		return this.shoppingCartRepos.save(shoppingCart);
	}

	@Override
	public ShoppingCartEntity findByUserAndStatus(UserEntity user, int status) {
		// TODO Auto-generated method stub
		return this.shoppingCartRepos.findByUserAndStatus(user, status);
	}
}
