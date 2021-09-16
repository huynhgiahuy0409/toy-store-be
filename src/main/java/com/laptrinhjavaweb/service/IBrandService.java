package com.laptrinhjavaweb.service;

import java.util.List;
import java.util.Set;

import org.springframework.data.domain.Pageable;

import com.laptrinhjavaweb.dto.BrandDTO;
import com.laptrinhjavaweb.entity.AgeEntity;
import com.laptrinhjavaweb.entity.BrandEntity;

public interface IBrandService {
	List<BrandDTO> findAll();

	long length();
}
