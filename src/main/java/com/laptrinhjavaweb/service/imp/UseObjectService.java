package com.laptrinhjavaweb.service.imp;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.UseObjectDTO;
import com.laptrinhjavaweb.entity.UseObjectEntity;
import com.laptrinhjavaweb.repository.UseObjectRepository;
import com.laptrinhjavaweb.service.IUserObjectService;

@Service
public class UseObjectService implements IUserObjectService {

	@Autowired
	private ModelMapper modelMapper;

	@Autowired
	private UseObjectRepository useObjectRepository;

	@Override
	public List<UseObjectDTO> findAll() {
		// TODO Auto-generated method stub
		return this.iterativeToDTO(this.useObjectRepository.findAll());
	}

	public List<UseObjectDTO> iterativeToDTO(List<UseObjectEntity> useObjectsEntity) {
		List<UseObjectDTO> useObjectsDTO = new ArrayList<UseObjectDTO>();
		for (UseObjectEntity useObjectEntity : useObjectsEntity) {
			useObjectsDTO.add(this.modelMapper.map(useObjectEntity, UseObjectDTO.class));
		}
		return useObjectsDTO;
	}

	@Override
	public Set<UseObjectEntity> findByIds(Long[] ids) {
		// TODO Auto-generated method stub
		return this.useObjectRepository.findByIdIn(ids);
	}
}
