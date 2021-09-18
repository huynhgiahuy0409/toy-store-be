package com.laptrinhjavaweb.api;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.constance.SystemContance;
import com.laptrinhjavaweb.converter.UserConverter;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.service.IUserService;

@RestController
@RequestMapping(value = "/api/user")
//@CrossOrigin(origins = "https://toy-store-fe.herokuapp.com")
@CrossOrigin(origins = "http://localhost:4200")
public class UserController {
	@Autowired
	IUserService userSerivce;
	@Autowired
	ModelMapper mp;

	@PostMapping("/update")
	private ResponseEntity<UserDTO> updateUserById(@RequestBody UserDTO userDTO) {
		UserEntity userEntity = this.userSerivce.findById(userDTO.getId());
		UserEntity user = UserConverter.toEntity(userEntity, userDTO);
		return ResponseEntity.ok(this.mp.map(this.userSerivce.save(user), UserDTO.class));
	}
}
