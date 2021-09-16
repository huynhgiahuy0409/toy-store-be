package com.laptrinhjavaweb.service.imp;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.CouponDTO;
import com.laptrinhjavaweb.entity.CouponEntity;
import com.laptrinhjavaweb.repository.CouponRepository;
import com.laptrinhjavaweb.service.ICouponService;

@Service
public class CouponService implements ICouponService {
	@Autowired
	ModelMapper mp;
	@Autowired
	CouponRepository couponRepository;

	@Override
	public CouponDTO getOneByCode(String code) {
		// TODO Auto-generated method stub
		CouponEntity coupon = couponRepository.getOneByCode(code);
		return coupon != null ? this.mp.map(coupon, CouponDTO.class) : null;
	}

}
