package com.laptrinhjavaweb.service.imp;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.PaymentDTO;
import com.laptrinhjavaweb.entity.PaymentEntity;
import com.laptrinhjavaweb.repository.PaymentRepository;
import com.laptrinhjavaweb.service.IPaymentService;

@Service
public class PaymentService implements IPaymentService {
	@Autowired
	private PaymentRepository paymentRepos;
	@Autowired
	private ModelMapper mp;

	@Override
	public PaymentEntity save(PaymentEntity payment) {
		// TODO Auto-generated method stub
		return this.paymentRepos.save(payment);
	}

}
