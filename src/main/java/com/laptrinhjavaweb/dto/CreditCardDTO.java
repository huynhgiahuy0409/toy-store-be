package com.laptrinhjavaweb.dto;

import java.sql.Date;
import java.util.Set;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.laptrinhjavaweb.entity.PaymentEntity;
import com.laptrinhjavaweb.entity.UserEntity;

public class CreditCardDTO {
	private String cardHolderName;
	private String cardNumber;
	private Date expiredDate;

	public String getCardHolderName() {
		return cardHolderName;
	}

	public void setCardHolderName(String cardHolderName) {
		this.cardHolderName = cardHolderName;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public Date getExpiredDate() {
		return expiredDate;
	}

	public void setExpiredDate(Date expiredDate) {
		this.expiredDate = expiredDate;
	}

}
