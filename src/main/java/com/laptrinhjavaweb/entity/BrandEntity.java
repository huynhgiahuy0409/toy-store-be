package com.laptrinhjavaweb.entity;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "brand")
public class BrandEntity extends BaseEntity {
	private String name;
	private String code;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "thumbnail_id", referencedColumnName = "id")
	private ImageEntity thumbnail;
	private int status;
	private Date cooperationDate;
	private int contractTerm;

	@OneToMany(mappedBy = "brand")
	private Set<ProductEntity> products;

	public String getName() {
		return name;
	}

	public Set<ProductEntity> getProducts() {
		return products;
	}

	public void setProducts(Set<ProductEntity> products) {
		this.products = products;
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

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getCooperationDate() {
		return cooperationDate;
	}

	public void setCooperationDate(Date cooperationDate) {
		this.cooperationDate = cooperationDate;
	}

	public int getContractTerm() {
		return contractTerm;
	}

	public void setContractTerm(int contractTerm) {
		this.contractTerm = contractTerm;
	}

	public ImageEntity getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(ImageEntity thumbnail) {
		this.thumbnail = thumbnail;
	}

}
