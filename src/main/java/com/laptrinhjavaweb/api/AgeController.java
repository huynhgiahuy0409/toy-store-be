package com.laptrinhjavaweb.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.constance.SystemContance;
import com.laptrinhjavaweb.dto.AgeDTO;
import com.laptrinhjavaweb.service.IAgeService;

@RestController
@RequestMapping(value = "/api")
//@CrossOrigin(origins = "https://toy-store-fe.herokuapp.com")
@CrossOrigin(origins = "http://localhost:4200")
public class AgeController {
	
	@Autowired
	private IAgeService ageService;

	@GetMapping(value = "/ages")
	public ResponseEntity<List<AgeDTO>> getAllAges() {
		List<AgeDTO> items = this.ageService.findAll();
		return ResponseEntity.ok(items);
	}
	
}
