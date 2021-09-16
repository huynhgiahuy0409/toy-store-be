package com.laptrinhjavaweb.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "favorite_product")
public class FavoriteProductEntity extends BaseEntity {
	@ManyToOne
	@JoinColumn(name = "user_id")
	private UserEntity user;

	@ManyToOne
	@JoinColumn(name = "product_id")
	private ProductEntity product;
	
	public FavoriteProductEntity(UserEntity user, ProductEntity product) {
		super();
		this.user = user;
		this.product = product;
	}

	public FavoriteProductEntity() {
		super();
	}

	public UserEntity getUser() {
		return user;
	}

	public void setUser(UserEntity user) {
		this.user = user;
	}

	public ProductEntity getProduct() {
		return product;
	}

	public void setProduct(ProductEntity product) {
		this.product = product;
	}

}
