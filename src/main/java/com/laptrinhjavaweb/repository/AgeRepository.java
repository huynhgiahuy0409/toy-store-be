package com.laptrinhjavaweb.repository;

import java.util.List;
import java.util.Set;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.AgeEntity;

public interface AgeRepository extends JpaRepository<AgeEntity, Long> {

	Set<AgeEntity> findByIdIn(List<Long> ids);

}
