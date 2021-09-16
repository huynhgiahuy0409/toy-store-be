package com.laptrinhjavaweb.dto;

public class BrandDTO {
	private Long id;
	private String name;
	private String code;
	private ImageDTO thumbnail;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
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
	public ImageDTO getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(ImageDTO thumbnail) {
		this.thumbnail = thumbnail;
	}

	
}
