package com.laptrinhjavaweb.dto;

import java.util.Set;

import com.laptrinhjavaweb.entity.ImageEntity;
import com.laptrinhjavaweb.entity.OrderItemEntity;

public class ProductDTO {
	private Long id;
	private String name;
	private String description;
	private ImageDTO thumbnail;
	private String discountPercent;
	private String sku;
	private double priceUnit;
	private double priceToBuy;
	private BrandDTO brand;
	private TaxDTO tax;
	private Set<UseObjectDTO> useObjects;
	private Set<AgeDTO> ages;

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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public ImageDTO getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(ImageDTO thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getDiscountPercent() {
		return discountPercent;
	}

	public void setDiscountPercent(String discountPercent) {
		this.discountPercent = discountPercent;
	}

	public String getSku() {
		return sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}

	public double getPriceUnit() {
		return priceUnit;
	}

	public void setPriceUnit(double priceUnit) {
		this.priceUnit = priceUnit;
	}

	public double getPriceToBuy() {
		return priceToBuy;
	}

	public void setPriceToBuy(double priceToBuy) {
		this.priceToBuy = priceToBuy;
	}

	public BrandDTO getBrand() {
		return brand;
	}

	public void setBrand(BrandDTO brand) {
		this.brand = brand;
	}

	public TaxDTO getTax() {
		return tax;
	}

	public void setTax(TaxDTO tax) {
		this.tax = tax;
	}

	public Set<UseObjectDTO> getUseObjects() {
		return useObjects;
	}

	public void setUseObjects(Set<UseObjectDTO> useObjects) {
		this.useObjects = useObjects;
	}

	public Set<AgeDTO> getAges() {
		return ages;
	}

	public void setAges(Set<AgeDTO> ages) {
		this.ages = ages;
	}

	@Override
	public String toString() {
		return "ProductDTO [id=" + id + ", name=" + name + ", description=" + description + ", thumbnail=" + thumbnail
				+ ", discountPercent=" + discountPercent + ", sku=" + sku + ", priceUnit=" + priceUnit + ", priceToBuy="
				+ priceToBuy + ", brand=" + brand + ", tax=" + tax + ", useObjects=" + useObjects + ", ages=" + ages
				+ "]";
	}

}
