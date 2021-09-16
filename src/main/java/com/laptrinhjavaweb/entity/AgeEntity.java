package com.laptrinhjavaweb.entity;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "age")
public class AgeEntity extends BaseEntity {
	private String name;
	private String code;

	@ManyToMany(mappedBy = "ages")
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

	public Set<ProductEntity> getProducts() {
		return products;
	}

	public void setProducts(Set<ProductEntity> products) {
		this.products = products;
	}

	@Override
	public String toString() {
		return "AgeEntity [name=" + name + "]";
	}

}
