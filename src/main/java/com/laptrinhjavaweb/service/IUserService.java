package com.laptrinhjavaweb.service;

import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.UserEntity;

public interface IUserService {
	UserEntity findById(long userId);

	UserEntity createUser(UserEntity user);

	UserEntity getUserDetail(Long userId);

	UserEntity findByUsername(String username);

	UserEntity save(UserEntity user);

	UserDTO save(UserDTO user);

	UserDTO updateUserById(UserDTO userDTO);

	/*----*/
	UserEntity saveAndFlush(UserEntity user);
}
