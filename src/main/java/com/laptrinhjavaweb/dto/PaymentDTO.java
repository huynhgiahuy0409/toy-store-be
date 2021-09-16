package com.laptrinhjavaweb.dto;

public class PaymentDTO {
	private CreditCardDTO creditCard;

	private String status;


	public CreditCardDTO getCreditCard() {
		return creditCard;
	}

	public void setCreditCard(CreditCardDTO creditCard) {
		this.creditCard = creditCard;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "PaymentDTO [creditCard=" + creditCard + ", status=" + status + "]";
	}


}
