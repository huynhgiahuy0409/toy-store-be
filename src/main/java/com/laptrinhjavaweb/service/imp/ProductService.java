package com.laptrinhjavaweb.service.imp;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.entity.AgeEntity;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.repository.ProductRepository;
import com.laptrinhjavaweb.service.IAgeService;
import com.laptrinhjavaweb.service.IProductService;

@Service
public class ProductService implements IProductService {
	@Autowired
	private ProductRepository productRepository;
	@Autowired
	private IAgeService ageService;
	@Autowired
	private ModelMapper modelMapper;

	@Override
	public List<ProductDTO> showProducts(Pageable pageable) {
		// TODO Auto-generated method stub
		return this.iterativeToDTO(this.productRepository.findAll(pageable).getContent());
	}

	@Override
	public long getLength() {
		// TODO Auto-generated method stub
		return this.productRepository.count();
	}

	public List<ProductDTO> iterativeToDTO(List<ProductEntity> productsEntity) {
		List<ProductDTO> productsDTO = new ArrayList<ProductDTO>();
		for (ProductEntity productEntity : productsEntity) {
			productsDTO.add(this.modelMapper.map(productEntity, ProductDTO.class));
		}
		return productsDTO;
	}

	public List<ProductEntity> iterativeToEntity(List<ProductDTO> productsDTO) {
		List<ProductEntity> productsEntity = new ArrayList<ProductEntity>();
		for (ProductDTO productDTO : productsDTO) {
			productsEntity.add(this.modelMapper.map(productDTO, ProductEntity.class));
		}
		return productsEntity;
	}

	@Override
	public List<ProductDTO> searchProducts(String searchValue, Pageable pageable) {
		// TODO Auto-generated method stub
		return this.iterativeToDTO(this.productRepository.findByNameContaining(searchValue, pageable));
	}

	@Override
	public long getLength(String searchValue) {
		// TODO Auto-generated method stub
		return this.productRepository.countByNameContaining(searchValue);
	}

	@Override
	public List<ProductDTO> showProducts(Set<AgeEntity> agesEntity, Pageable pageable) {
		// TODO Auto-generated method stub
		return this.iterativeToDTO(this.productRepository.findDistinctByAgesIn(agesEntity, pageable));
	}

	@Override
	public long getLength(Set<AgeEntity> agesEntity) {
		// TODO Auto-generated method stub
		return this.productRepository.countByAgesIn(agesEntity);
	}

	@Override
	public List<ProductDTO> showProducts(Specification<ProductEntity> spec, Pageable pageable) {
		// TODO Auto-generated method stub
		return this.iterativeToDTO(this.productRepository.findAll(spec, pageable).getContent());
	}

	@Override
	public long getTotalLength(Specification<ProductEntity> spec) {
		// TODO Auto-generated method stub
		return this.productRepository.count(spec);
	}

	@Override
	public long getTotalLength() {
		// TODO Auto-generated method stub
		return this.productRepository.count();
	}

	@Override
	public ProductEntity findById(Long id) {
		// TODO Auto-generated method stub
		return this.productRepository.findOne(id);
	}
}
