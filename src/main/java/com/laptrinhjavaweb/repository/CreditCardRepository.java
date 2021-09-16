package com.laptrinhjavaweb.repository;

import java.util.Date;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.CreditCardEntity;
import com.laptrinhjavaweb.entity.UserEntity;

public interface CreditCardRepository extends JpaRepository<CreditCardEntity, Long> {
	CreditCardEntity findByCardNumberAndExpiredDateAndUser(String cartNumber, Date expiredDate, UserEntity user);
}
