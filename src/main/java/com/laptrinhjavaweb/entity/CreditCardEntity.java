package com.laptrinhjavaweb.entity;

import java.sql.Date;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "credit_card")
public class CreditCardEntity extends BaseEntity {
	private String cardHolderName;
	private String cardNumber;
	private Date expiredDate;
	@ManyToOne
	@JoinColumn(name = "user_id")
	private UserEntity user;
	@OneToMany(mappedBy = "creditCard")
	private Set<PaymentEntity> payments;

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

	public UserEntity getUser() {
		return user;
	}

	public void setUser(UserEntity user) {
		this.user = user;
	}

	public Set<PaymentEntity> getPayments() {
		return payments;
	}

	public void setPayments(Set<PaymentEntity> payments) {
		this.payments = payments;
	}

	@Override
	public String toString() {
		return "CreditCardEntity [cardHolderName=" + cardHolderName + ", cardNumber=" + cardNumber + ", expiredDate="
				+ expiredDate + ", user=" + user + ", payments=" + payments + "]";
	}

}
