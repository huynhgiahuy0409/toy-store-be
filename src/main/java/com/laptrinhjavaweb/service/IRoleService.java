package com.laptrinhjavaweb.service;

import java.util.Set;

import com.laptrinhjavaweb.service.imp.RoleService;

public interface IRoleService {
	Set<RoleService> getRolesByUserId(Long userId);
}
