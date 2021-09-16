package com.laptrinhjavaweb.service;

import java.util.List;
import java.util.Set;

import com.laptrinhjavaweb.dto.UseObjectDTO;
import com.laptrinhjavaweb.entity.AgeEntity;
import com.laptrinhjavaweb.entity.UseObjectEntity;

public interface IUserObjectService {
	List<UseObjectDTO> findAll();

	Set<UseObjectEntity> findByIds(Long[] ids);
}
