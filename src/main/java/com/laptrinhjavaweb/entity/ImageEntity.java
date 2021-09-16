package com.laptrinhjavaweb.entity;

import javax.persistence.Entity;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "image")
public class ImageEntity extends BaseEntity {
	private String url;

	@OneToOne(mappedBy = "thumbnail")
	private ProductEntity product;

	@OneToOne(mappedBy = "thumbnail")
	private BrandEntity brand;

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
