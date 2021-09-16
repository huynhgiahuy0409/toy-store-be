package com.laptrinhjavaweb.entity;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "use_object")
public class UseObjectEntity extends BaseEntity {
	private String name;
	private String code;
	
	@ManyToMany(mappedBy = "genders")
	private Set<ProductEntity> products;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
