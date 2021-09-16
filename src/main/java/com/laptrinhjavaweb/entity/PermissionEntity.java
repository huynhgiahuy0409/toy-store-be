package com.laptrinhjavaweb.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "permission")
public class PermissionEntity extends BaseEntity {

	private String permissionName;

	private String permissionKey;

	public String getPermissionName() {
		return permissionName;
	}

	@ManyToMany(mappedBy = "permissions")
	private Set<RoleEntity> roles = new HashSet<RoleEntity>();

	public void setPermissionName(String permissionName) {
		this.permissionName = permissionName;
	}

	public String getPermissionKey() {
		return permissionKey;
	}

	public void setPermissionKey(String permissionKey) {
		this.permissionKey = permissionKey;
	}

}
