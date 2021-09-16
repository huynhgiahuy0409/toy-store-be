package com.laptrinhjavaweb.service;

import java.util.List;
import java.util.Set;

import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;

import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.entity.AgeEntity;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.repository.ProductRepository;

public interface IProductService {
	List<ProductDTO> showProducts(Specification<ProductEntity> spec, Pageable pageable);

	long getTotalLength(Specification<ProductEntity> spec);

	long getTotalLength();

	List<ProductDTO> showProducts(Pageable pageable);

	List<ProductDTO> showProducts(Set<AgeEntity> agesEntity, Pageable pageable);

	List<ProductDTO> searchProducts(String searchValue, Pageable pageable);

	long getLength();

	long getLength(String searchValue);

	long getLength(Set<AgeEntity> agesEntity);

	ProductEntity findById(Long id);
}
