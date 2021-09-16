package com.laptrinhjavaweb.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "payment")
public class PaymentEntity extends BaseEntity {
	@ManyToOne
	@JoinColumn(name = "credit_card_id")
	private CreditCardEntity creditCard;

	private int status;

	@OneToOne(mappedBy = "payment")
	private OrderEntity order;

	public PaymentEntity(CreditCardEntity creditCard, int status) {
		super();
		this.creditCard = creditCard;
		this.status = status;
	}

	public PaymentEntity() {
	}

	public CreditCardEntity getCreditCard() {
		return creditCard;
	}

	public void setCreditCard(CreditCardEntity creditCard) {
		this.creditCard = creditCard;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public OrderEntity getOrder() {
		return order;
	}

	public void setOrder(OrderEntity order) {
		this.order = order;
	}

}
