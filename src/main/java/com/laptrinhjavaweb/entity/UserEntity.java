package com.laptrinhjavaweb.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class UserEntity extends BaseEntity {

	@Column(name = "username")
	private String username;

	@Column
	private String password;

	@Column(name = "fullname")
	private String fullName;

	@Column
	private Integer status;

	@Column
	private String gender;

	private String address;

	private String email;

	private String phoneNumber;

	@OneToMany(mappedBy = "user")
	private Set<OrderEntity> orders;

	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	@JoinTable(name = "user_role", joinColumns = { @JoinColumn(name = "user_id") }, inverseJoinColumns = {
			@JoinColumn(name = "role_id") })
	private Set<RoleEntity> roles = new HashSet<RoleEntity>();

	@OneToMany(mappedBy = "user")
	private Set<CreditCardEntity> cards = new HashSet<CreditCardEntity>();
 
	@OneToMany(mappedBy = "user")
	private Set<ShoppingCartEntity> shoppingCarts;

	@OneToMany(mappedBy = "user")
	private Set<FavoriteProductEntity> productFavorites;

	public Set<FavoriteProductEntity> getProductFavorites() {
		return productFavorites;
	}

	public void setProductFavorites(Set<FavoriteProductEntity> productFavorites) {
		this.productFavorites = productFavorites;
	}

	public Set<ShoppingCartEntity> getShoppingCarts() {
		return shoppingCarts;
	}

	public void setShoppingCarts(Set<ShoppingCartEntity> shoppingCarts) {
		this.shoppingCarts = shoppingCarts;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Set<OrderEntity> getOrders() {
		return orders;
	}

	public void setOrders(Set<OrderEntity> orders) {
		this.orders = orders;
	}

	public Set<CreditCardEntity> getCards() {
		return cards;
	}

	public void setCards(Set<CreditCardEntity> cards) {
		this.cards = cards;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getGender() {
		return gender;
	}

	public Set<RoleEntity> getRoles() {
		return roles;
	}

	public void setRoles(Set<RoleEntity> roles) {
		this.roles = roles;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}
