package com.laptrinhjavaweb.api;

import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.constance.SystemContance;

@RestController
//@CrossOrigin(origins = "https://toy-store-fe.herokuapp.com")
@CrossOrigin(origins = SystemContance.LOCAL_HOST_4200)
public class HomePageController {

	@GetMapping(value = "/home")
	public void indexPage() {
	}

	@GetMapping(value = "/admin")
	public ResponseEntity<String> adminPage() {
		System.out.println(SecurityContextHolder.getContext().getAuthentication());
		return ResponseEntity.ok("admin");
	}
}
