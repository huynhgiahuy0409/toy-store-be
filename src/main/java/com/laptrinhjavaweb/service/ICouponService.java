package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dto.CouponDTO;

public interface ICouponService {
	CouponDTO getOneByCode(String code);
}
