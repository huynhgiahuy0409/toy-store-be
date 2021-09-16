package com.laptrinhjavaweb.service.imp;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.laptrinhjavaweb.converter.UserConverter;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.repository.UserRepository;
import com.laptrinhjavaweb.service.IUserService;

@Service
public class UserService implements IUserService {
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private ModelMapper modelMapper;

	@Override
	public UserEntity createUser(UserEntity user) {
		// TODO Auto-generated method stub
		return this.userRepository.saveAndFlush(user);
	}

	@Override
	public UserEntity getUserDetail(@RequestParam(value = "id") Long userId) {
		// TODO Auto-generated method stub
		return this.userRepository.findOne(userId);
	}

	@Override
	public UserEntity findByUsername(String username) {
		// TODO Auto-generated method stub
		return this.userRepository.findByUsername(username);
	}

	@Override
	public UserEntity save(UserEntity user) {
		// TODO Auto-generated method stub
		return userRepository.saveAndFlush(user);
	}

	@Override
	public UserDTO save(UserDTO user) {
		UserEntity userEntity = this.modelMapper.map(user, UserEntity.class);
		UserEntity userSaved = this.userRepository.save(userEntity);
		return this.modelMapper.map(userSaved, UserDTO.class);
	}

	@Override
	public UserDTO updateUserById(UserDTO userDTO) {
		// TODO Auto-generated method stub
		UserEntity userEntity = this.userRepository.findOne(userDTO.getId());
		this.userRepository.saveAndFlush(UserConverter.toEntity(userEntity, userDTO));
		return this.modelMapper.map(userEntity, UserDTO.class);
	}

	@Override
	public UserEntity findById(long userId) {
		// TODO Auto-generated method stub
		return this.userRepository.findOne(userId);
	}

	@Override
	public UserEntity saveAndFlush(UserEntity user) {
		// TODO Auto-generated method stub
		return this.userRepository.save(user);
	}
}
