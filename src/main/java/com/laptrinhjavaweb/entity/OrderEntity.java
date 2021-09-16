package com.laptrinhjavaweb.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "order_t")
public class OrderEntity extends BaseEntity {
	@ManyToOne
	@JoinColumn(name = "user_id")
	private UserEntity user;

	@OneToMany(mappedBy = "order")
	private Set<OrderItemEntity> orderItems;

	@Column(name = "totalPayment")
	private int totalPayment;

	@OneToOne
	@JoinColumn(name = "payment_id")
	private PaymentEntity payment;

	public OrderEntity(UserEntity user, int totalPayment, PaymentEntity payment) {
		super();
		this.user = user;
		this.totalPayment = totalPayment;
		this.payment = payment;
	}

	public OrderEntity() {

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

	public int getTotalPayment() {
		return totalPayment;
	}

	public void setTotalPayment(int totalPayment) {
		this.totalPayment = totalPayment;
	}

	public PaymentEntity getPayment() {
		return payment;
	}

	public void setPayment(PaymentEntity payment) {
		this.payment = payment;
	}

	@Override
	public String toString() {
		return "OrderEntity [totalPayment=" + totalPayment + "]";
	}


	

}
