package com.laptrinhjavaweb.repository.specification.builder;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.domain.Specifications;

import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.repository.specification.ProductSpecification;
import com.laptrinhjavaweb.repository.specification.SearchCriteria;

public class ProductSpecificationBuilder {
	private List<SearchCriteria> params;

	public ProductSpecificationBuilder() {
		// TODO Auto-generated constructor stub
		params = new ArrayList<SearchCriteria>();
	}

	public ProductSpecificationBuilder with(String key, String operation, Object value) {
		params.add(new SearchCriteria(key, value, operation));
		return this;
	}

	public Specification<ProductEntity> build() {
		if (params.size() == 0) {
			return null;
		} 
		List<Specification<ProductEntity>> specs = params.stream().map(ProductSpecification::new)
				.collect(Collectors.toList());
		Specification<ProductEntity> result = specs.get(0);
		for (int i = 1; i < specs.size(); i++) {
			result = Specifications.where(result).and(specs.get(i));
		}
		return result;
	}
}
