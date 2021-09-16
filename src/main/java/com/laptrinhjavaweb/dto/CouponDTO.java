package com.laptrinhjavaweb.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CouponDTO {
	private String name;
	private String code;
	private int discount;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

}
