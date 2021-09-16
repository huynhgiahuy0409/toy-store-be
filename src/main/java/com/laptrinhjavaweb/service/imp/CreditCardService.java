package com.laptrinhjavaweb.service.imp;

import java.util.Date;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.CreditCardDTO;
import com.laptrinhjavaweb.entity.CreditCardEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.repository.CreditCardRepository;
import com.laptrinhjavaweb.service.ICreditCardService;

@Service
public class CreditCardService implements ICreditCardService {
	@Autowired
	private CreditCardRepository creditCardRepos;
	@Autowired
	private ModelMapper mp;

	@Override
	public CreditCardEntity save(CreditCardDTO creditCard) {
		// TODO Auto-generated method stub
		return this.creditCardRepos.save(this.mp.map(creditCard, CreditCardEntity.class));
	}

	@Override
	public CreditCardEntity saveAndFlush(CreditCardEntity creaditCard) {
		// TODO Auto-generated method stub
		return this.creditCardRepos.saveAndFlush(creaditCard);
	}

	@Override
	public CreditCardEntity findByCardNumberAndExpiredDateAndUser(String cartNumber, Date expiredDate,
			UserEntity user) {
		// TODO Auto-generated method stub
		return this.creditCardRepos.findByCardNumberAndExpiredDateAndUser(cartNumber, expiredDate, user);
	}

}
