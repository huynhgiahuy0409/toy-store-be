package com.laptrinhjavaweb.dto.orderitem;

public class OrderItemRequestDTO {
	private long itemId;
	private long quantity;

	public long getItemId() {
		return itemId;
	}

	public void setItemId(long itemId) {
		this.itemId = itemId;
	}

	public long getQuantity() {
		return quantity;
	}

	public void setQuantity(long quantity) {
		this.quantity = quantity;
	}

}
