package com.laptrinhjavaweb.repository;

import java.util.List;
import java.util.Set;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.laptrinhjavaweb.entity.AgeEntity;
import com.laptrinhjavaweb.entity.BrandEntity;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.entity.UseObjectEntity;

public interface ProductRepository extends JpaRepository<ProductEntity, Long>,
		/* JpaSpecificationExecutor to get the new Specification APIs */
		JpaSpecificationExecutor<ProductEntity> {

	List<ProductEntity> findByNameContaining(String searchValue, Pageable pageable);

	long countByNameContaining(String searchValue);

	List<ProductEntity> findDistinctByAgesIn(Set<AgeEntity> agesEntity, Pageable pageable);

	List<ProductEntity> findDistinctByAgesOrGendersIn(Set<AgeEntity> agesEntity, Set<UseObjectEntity> useObjectsEntity,
			Pageable pageable);

	long countByAgesIn(Set<AgeEntity> agesEntity);

}