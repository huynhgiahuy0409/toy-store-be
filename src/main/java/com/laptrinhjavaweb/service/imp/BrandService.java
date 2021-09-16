package com.laptrinhjavaweb.service.imp;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.BrandDTO;
import com.laptrinhjavaweb.entity.BrandEntity;
import com.laptrinhjavaweb.repository.BrandRepository;
import com.laptrinhjavaweb.service.IBrandService;

@Service
public class BrandService implements IBrandService {
	@Autowired
	private BrandRepository brandrepository;
	@Autowired
	private ModelMapper modelMapper;

	@Override
	public List<BrandDTO> findAll() {
		// TODO Auto-generated method stub
		List<BrandDTO> brandsDTO = this.iterativeToDTO(this.brandrepository.findAll());
		System.out.println(brandsDTO);
		return brandsDTO;
	}

	@Override
	public long length() {
		// TODO Auto-generated method stub
		return this.brandrepository.count();
	}

	public List<BrandDTO> iterativeToDTO(List<BrandEntity> brandsEntity) {
		List<BrandDTO> brandsDTO = new ArrayList<BrandDTO>();
		for (BrandEntity brandEntity : brandsEntity) {
			brandsDTO.add(this.modelMapper.map(brandEntity, BrandDTO.class));
		}
		return brandsDTO;
	}

}
