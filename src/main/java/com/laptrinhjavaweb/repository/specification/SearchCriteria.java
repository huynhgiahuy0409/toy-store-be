package com.laptrinhjavaweb.repository.specification;

import java.util.Set;

public class SearchCriteria {
	private String key;
	private Object value;
	/* operation: the operation – for example, equality, less than, … etc. */
	private String operation;
//	private Set<T> values;

	public String getKey() {
		return key;
	}

	public SearchCriteria(String key, Object value, String operation) {
		super();
		this.key = key;
		this.value = value;
		this.operation = operation;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public Object getValue() {
		return value;
	}

	public void setValue(Object value) {
		this.value = value;
	}

	public String getOperation() {
		return operation;
	}

	public void setOperation(String operation) {
		this.operation = operation;
	}

//	public Set<T> getValues() {
//		return values;
//	}
//
//	public void setValues(Set<T> values) {
//		this.values = values;
//	}

}
