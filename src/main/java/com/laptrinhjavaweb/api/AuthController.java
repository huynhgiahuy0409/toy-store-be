package com.laptrinhjavaweb.api;

import java.util.Date;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.config.CustomUserDetailsService;
import com.laptrinhjavaweb.constance.SystemContance;
import com.laptrinhjavaweb.dto.JwtDTO;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.dto.auth.AuthenticationRequestDTO;
import com.laptrinhjavaweb.dto.auth.AuthenticationResponseDTO;
import com.laptrinhjavaweb.entity.JwtEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.service.ITokenAuthenticationService;
import com.laptrinhjavaweb.service.ITokenService;
import com.laptrinhjavaweb.service.IUserService;
import com.laptrinhjavaweb.util.JWTUtil;

@RestController
@RequestMapping(value = "/api")
//@CrossOrigin(origins = "https://toy-store-fe.herokuapp.com")
@CrossOrigin(origins = SystemContance.LOCAL_HOST_4200)
public class AuthController {
	/* SERVICE */
	@Autowired
	private IUserService userSerivice;
	@Autowired
	private ITokenService tokenService;
	@Autowired
	private CustomUserDetailsService userDetailsService;
	@Autowired
	private ITokenAuthenticationService tokenAuthenticationService;
	/* HELPER */
	@Autowired
	private JWTUtil jwtUtil;
	@Autowired
	private ModelMapper modelMapper;

	@PostMapping("/authenticate")
	public ResponseEntity<AuthenticationResponseDTO> createAuthenticationToken(
			@RequestBody AuthenticationRequestDTO authenticationRequest) throws Exception {
		UserDetails userDetail = null;
		try {
			userDetail = this.userDetailsService.loadUserByUsername(authenticationRequest.getUsername());
			if (userDetail != null && userDetail.getPassword().equals(authenticationRequest.getPassword())) {
				String token = this.jwtUtil.generateToken(userDetail);
				/* Create token and save into db */
				JwtEntity jwtEntity = new JwtEntity();
				jwtEntity.setToken(token);
				jwtEntity.setTokenExpirationDate(this.jwtUtil.getExpirationDateFromToken(token));
				this.tokenService.saveToken(jwtEntity);
				/* Convert to DTO */
				UserEntity userEntity = this.userSerivice.findByUsername(authenticationRequest.getUsername());
				UserDTO userDTO = this.modelMapper.map(userEntity, UserDTO.class);
				JwtDTO jwtDTO = this.modelMapper.map(jwtEntity, JwtDTO.class);
//				jwtDTO.setTokenExpirationDate(jwtEntity.getTokenExpirationDate());
				return ResponseEntity.ok(new AuthenticationResponseDTO(userDTO, jwtDTO));
			}
		} catch (DisabledException e) {
			throw new Exception("USER_DISABLED", e);
		} catch (BadCredentialsException e) {
			throw new Exception("INVALID_CREDENTIALS", e);
		}
		return null;
	}

	@PostMapping(value = "/refresh-token")
	public ResponseEntity<AuthenticationResponseDTO> refreshToken(HttpServletRequest request) {
		// Change token and expired time
		String token = this.tokenAuthenticationService.getTokenFromHeader(request);
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		UserDetails userDetail = this.userDetailsService.loadUserByUsername(username);
		UserEntity userEntity = this.userSerivice.findByUsername(username);
		JwtEntity jwtEntity = this.tokenService.findByToken(token);
		String newToken = this.jwtUtil.generateToken(userDetail);
		Date newExpiredTime = this.jwtUtil.getExpirationDateFromToken(newToken);
		System.out.println("b" + jwtEntity);
		jwtEntity.setToken(newToken);
		jwtEntity.setTokenExpirationDate(newExpiredTime);
		System.out.println(jwtEntity);
		this.tokenService.saveToken(jwtEntity);
		/* Convert to DTO */
		UserDTO userDTO = this.modelMapper.map(userEntity, UserDTO.class);
		JwtDTO jwtDTO = this.modelMapper.map(jwtEntity, JwtDTO.class);
		AuthenticationResponseDTO result = new AuthenticationResponseDTO(userDTO, jwtDTO);
		return ResponseEntity.ok(result);
	}

	@PostMapping(value = "/revoke-token")
	public void revokeToken(HttpServletRequest request) {
		String token = this.tokenAuthenticationService.getTokenFromHeader(request);
		System.out.println(token);
		Long recoredId = this.tokenService.removeByToken(token);
		System.out.println(recoredId);
	}

}
