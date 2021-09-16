package com.laptrinhjavaweb.dto;

public class OrderItemDTO {
	private ProductDTO product;
	private int quantity;

	public ProductDTO getProduct() {
		return product;
	}

	public void setProduct(ProductDTO product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "OrderItemDTO [product=" + product + ", quantity=" + quantity + "]";
	}

}
