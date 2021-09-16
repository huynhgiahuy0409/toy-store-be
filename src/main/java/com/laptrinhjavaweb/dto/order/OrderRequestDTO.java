package com.laptrinhjavaweb.dto.order;

import com.laptrinhjavaweb.dto.CreditCardDTO;

public class OrderRequestDTO {
	private long userId;
	private CreditCardDTO creditCard;
	private int totalPayment;

	public CreditCardDTO getCreditCard() {
		return creditCard;
	}

	public void setCreditCard(CreditCardDTO creditCard) {
		this.creditCard = creditCard;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public int getTotalPayment() {
		return totalPayment;
	}

	public void setTotalPayment(int totalPayment) {
		this.totalPayment = totalPayment;
	}

}
