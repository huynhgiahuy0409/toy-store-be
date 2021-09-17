package com.laptrinhjavaweb.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.dto.BrandDTO;
import com.laptrinhjavaweb.service.IBrandService;

@RestController
@RequestMapping(value = "/api")
@CrossOrigin(origins = "https://toy-store-fe.herokuapp.com")
public class BrandController {
	@Autowired
	IBrandService brandService;

	@GetMapping("/brands")
	private ResponseEntity<List<BrandDTO>> showBrands() {
		List<BrandDTO> items = this.brandService.findAll();
		return ResponseEntity.ok(items);
	} 
}
