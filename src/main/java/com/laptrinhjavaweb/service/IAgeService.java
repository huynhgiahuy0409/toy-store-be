package com.laptrinhjavaweb.service;

import java.util.List;
import java.util.Set;

import com.laptrinhjavaweb.dto.AgeDTO;
import com.laptrinhjavaweb.entity.AgeEntity;

public interface IAgeService {
	List<AgeDTO> findAll();

	Set<AgeEntity> findByIds(List<Long> ids);

	List<AgeEntity> iterativeToEntity(List<AgeDTO> agesDTO);
}
