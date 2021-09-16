package com.laptrinhjavaweb.service.imp;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.AgeDTO;
import com.laptrinhjavaweb.entity.AgeEntity;
import com.laptrinhjavaweb.repository.AgeRepository;
import com.laptrinhjavaweb.service.IAgeService;

@Service
public class AgeService implements IAgeService {
	@Autowired
	private ModelMapper modelMapper;

	@Autowired
	private AgeRepository ageRepositoy;

	@Override
	public List<AgeDTO> findAll() {
		// TODO Auto-generated method stub
		return this.iterativeToDTO(this.ageRepositoy.findAll());
	}

	public List<AgeDTO> iterativeToDTO(List<AgeEntity> agesEntity) {
		List<AgeDTO> agesDTO = new ArrayList<AgeDTO>();
		for (AgeEntity ageEntity : agesEntity) {
			agesDTO.add(this.modelMapper.map(ageEntity, AgeDTO.class));
		}
		return agesDTO;
	}

	public List<AgeEntity> iterativeToEntity(List<AgeDTO> agesDTO) {
		List<AgeEntity> agesEntity = new ArrayList<AgeEntity>();
		for (AgeDTO ageDTO : agesDTO) {
			agesEntity.add(this.modelMapper.map(ageDTO, AgeEntity.class));
		}
		return agesEntity;
	}

	@Override
	public Set<AgeEntity> findByIds(List<Long> ids) {
		// TODO Auto-generated method stub
		return this.ageRepositoy.findByIdIn(ids);
	}

}
