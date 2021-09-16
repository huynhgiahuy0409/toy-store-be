package com.laptrinhjavaweb.dto;

import java.util.Date;
import java.util.Set;

public class OrderDTO {
	private Long id;

	private Date createdDate;

	private UserDTO user;

//	private Set<OrderItemDTO> orderItems;

	private int totalPayment;

	private PaymentDTO payment;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public UserDTO getUser() {
		return user;
	}

	public void setUser(UserDTO user) {
		this.user = user;
	}

//	public Set<OrderItemDTO> getOrderItems() {
//		return orderItems;
//	}
//
//	public void setOrderItems(Set<OrderItemDTO> orderItems) {
//		this.orderItems = orderItems;
//	}

	public int getTotalPayment() {
		return totalPayment;
	}

	public void setTotalPayment(int totalPayment) {
		this.totalPayment = totalPayment;
	}

	public PaymentDTO getPayment() {
		return payment;
	}

	public void setPayment(PaymentDTO payment) {
		this.payment = payment;
	}

	@Override
	public String toString() {
		return "OrderDTO [id=" + id + ", createdDate=" + createdDate + ", user=" + user + ", totalPayment="
				+ totalPayment + ", payment=" + payment + "]";
	}


}
