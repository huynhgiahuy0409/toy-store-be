package com.laptrinhjavaweb.dto;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PaginationResult<T> {

	private List<T> items = new ArrayList<>();

	private long totalLength;

	public PaginationResult() {
		super();
	}

	public PaginationResult(List<T> items, long totalLength) {
		super();
		this.items = items;
		this.totalLength = totalLength;
	}

	public List<T> getItems() {
		return items;
	}

	public void setItems(List<T> items) {
		this.items = items;
	}

	public long getTotalLength() {
		return totalLength;
	}

	public void setTotalLength(long totalLength) {
		this.totalLength = totalLength;
	}

}
