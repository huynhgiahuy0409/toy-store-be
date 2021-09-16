package com.laptrinhjavaweb.dto;

import java.util.HashSet;
import java.util.Set;

public class RoleDTO {
	String code;

	private Set<PermissionDTO> permissions = new HashSet<PermissionDTO>();

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Set<PermissionDTO> getPermissions() {
		return permissions;
	}

	public void setPermissions(Set<PermissionDTO> permissions) {
		this.permissions = permissions;
	}

	@Override
	public String toString() {
		return "RoleDTO [code=" + code + ", permissions=" + permissions + "]";
	}

}
