package com.laptrinhjavaweb.dto;

import java.util.HashSet;
import java.util.Set;

import com.laptrinhjavaweb.entity.RoleEntity;

public class UserDTO {
	private Long id;

	private String username;

	private String password;

	private String fullName;

	private String gender;

	private String status;

	private String address;

	private String email;

	private String phoneNumber;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	private Set<RoleDTO> roles = new HashSet<RoleDTO>();

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Set<RoleDTO> getRoles() {
		return roles;
	}

	public void setRoles(Set<RoleDTO> roles) {
		this.roles = roles;
	}

	@Override
	public String toString() {
		return "UserDTO [username=" + username + ", password=" + password + ", fullName=" + fullName + ", gender="
				+ gender + ", status=" + status + ", roles=" + roles + "]";
	}

}
