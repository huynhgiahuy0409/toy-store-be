package com.laptrinhjavaweb.repository;

import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.AgeEntity;
import com.laptrinhjavaweb.entity.UseObjectEntity;

public interface UseObjectRepository extends JpaRepository<UseObjectEntity, Long> {
	Set<UseObjectEntity> findByIdIn(Long ids[]);
}
