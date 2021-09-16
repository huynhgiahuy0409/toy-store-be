package com.laptrinhjavaweb.service;

import java.util.Date;

import com.laptrinhjavaweb.dto.CreditCardDTO;
import com.laptrinhjavaweb.entity.CreditCardEntity;
import com.laptrinhjavaweb.entity.UserEntity;

public interface ICreditCardService {
	CreditCardEntity save(CreditCardDTO creditCard);

	CreditCardEntity saveAndFlush(CreditCardEntity creaditCard);

	CreditCardEntity findByCardNumberAndExpiredDateAndUser(String cartNumber, Date expiredDate, UserEntity user);
}
