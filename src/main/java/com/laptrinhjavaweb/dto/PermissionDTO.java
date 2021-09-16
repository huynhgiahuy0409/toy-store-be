package com.laptrinhjavaweb.dto;

public class PermissionDTO {
	private String permissionKey;

	public String getPermissionKey() {
		return permissionKey;
	}

	public void setPermissionKey(String permissionKey) {
		this.permissionKey = permissionKey;
	}

	@Override
	public String toString() {
		return "PermissionDTO [permissionKey=" + permissionKey + "]";
	}

}
