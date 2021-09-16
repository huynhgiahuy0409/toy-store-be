package com.laptrinhjavaweb.converter;

import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.UserEntity;

public class UserConverter {
	public static UserEntity toEntity(UserEntity userEntity, UserDTO userDTO) {
		userEntity.setFullName(userDTO.getFullName());
		userEntity.setAddress(userDTO.getAddress());
		userEntity.setEmail(userDTO.getEmail());
		userEntity.setPhoneNumber(userDTO.getPhoneNumber());
		return userEntity;
	}
}
