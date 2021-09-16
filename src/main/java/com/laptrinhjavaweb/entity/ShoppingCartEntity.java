package com.laptrinhjavaweb.entity;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "shopping_cart")
public class ShoppingCartEntity extends BaseEntity {
	@OneToMany(mappedBy = "shoppingCart")
	private Set<OrderItemEntity> orderItems;

	private int status;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private UserEntity user;

	public ShoppingCartEntity(int status, UserEntity user) {
		super();
		this.status = status;
		this.user = user;
	}

	public ShoppingCartEntity() {
		super();
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public UserEntity getUser() {
		return user;
	}

	public void setUser(UserEntity user) {
		this.user = user;
	}

	public Set<OrderItemEntity> getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(Set<OrderItemEntity> orderItems) {
		this.orderItems = orderItems;
	}

}
