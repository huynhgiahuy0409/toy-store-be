package com.laptrinhjavaweb.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "order_item")
public class OrderItemEntity extends BaseEntity {
	@ManyToOne
	@JoinColumn(name = "product_id")
	private ProductEntity product;

	private int quantity;

	@ManyToOne
	@JoinColumn(name = "order_id")
	private OrderEntity order;

	@ManyToOne
	@JoinColumn(name = "shopping_cart_id")
	private ShoppingCartEntity shoppingCart;

	public OrderItemEntity(ProductEntity product, int quantity, ShoppingCartEntity shoppingCart) {
		super();
		this.product = product;
		this.quantity = quantity;
		this.shoppingCart = shoppingCart;
	}

	public OrderItemEntity() {
	}

	public OrderEntity getOrder() {
		return order;
	}

	public void setOrder(OrderEntity order) {
		this.order = order;
	}

	public ShoppingCartEntity getShoppingCart() {
		return shoppingCart;
	}

	public void setShoppingCart(ShoppingCartEntity shoppingCart) {
		this.shoppingCart = shoppingCart;
	}

	public ProductEntity getProduct() {
		return product;
	}

	public void setProduct(ProductEntity product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "OrderItemEntity [product=" + product + ", quantity=" + quantity + ", order=" + order + ", shoppingCart="
				+ shoppingCart + "]";
	}

}
