package com.laptrinhjavaweb.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class ProductEntity extends BaseEntity {
	private String name;
	private String description;
	private String discountPercent;
	private String sku;
	private double priceUnit;
	private double priceToBuy;
	private int quantity;
	private boolean isNew;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "thumbnail_id", referencedColumnName = "id")
	private ImageEntity thumbnail;

	@OneToMany(mappedBy = "product")
	private Set<OrderItemEntity> orderItems;

	@ManyToOne
	@JoinColumn(name = "brand_id")
	private BrandEntity brand;

	@ManyToOne
	@JoinColumn(name = "tax_id")
	private TaxEntity tax;

	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	@JoinTable(name = "product_useObj", joinColumns = { @JoinColumn(name = "product_id") }, inverseJoinColumns = {
			@JoinColumn(name = "userObj_id") })
	private Set<UseObjectEntity> genders;

	@ManyToMany(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	@JoinTable(name = "product_age", joinColumns = { @JoinColumn(name = "product_id") }, inverseJoinColumns = {
			@JoinColumn(name = "age_id") })
	private Set<AgeEntity> ages;

	@OneToMany(mappedBy = "product")
	private Set<FavoriteProductEntity> productFavorites;

	public Set<FavoriteProductEntity> getProductFavorites() {
		return productFavorites;
	}

	public void setProductFavorites(Set<FavoriteProductEntity> productFavorites) {
		this.productFavorites = productFavorites;
	}

	public boolean isNew() {
		return isNew;
	}

	public void setNew(boolean isNew) {
		this.isNew = isNew;
	}

	public String getName() {
		return name;
	}

	public Set<OrderItemEntity> getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(Set<OrderItemEntity> orderItems) {
		this.orderItems = orderItems;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<UseObjectEntity> getGenders() {
		return genders;
	}

	public void setGenders(Set<UseObjectEntity> genders) {
		this.genders = genders;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public BrandEntity getBrand() {
		return brand;
	}

	public void setBrand(BrandEntity brand) {
		this.brand = brand;
	}

	public TaxEntity getTax() {
		return tax;
	}

	public void setTax(TaxEntity tax) {
		this.tax = tax;
	}

	public Set<UseObjectEntity> getUseObjects() {
		return genders;
	}

	public void setUseObjects(Set<UseObjectEntity> useObjects) {
		this.genders = useObjects;
	}

	public ImageEntity getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(ImageEntity thumbnail) {
		this.thumbnail = thumbnail;
	}

	public Set<AgeEntity> getAges() {
		return ages;
	}

	public void setAges(Set<AgeEntity> ages) {
		this.ages = ages;
	}

}
