package com.laptrinhjavaweb.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.constance.SystemContance;
import com.laptrinhjavaweb.dto.UseObjectDTO;
import com.laptrinhjavaweb.service.IUserObjectService;

@RestController
@RequestMapping(value = "/api")
//@CrossOrigin(origins = "https://toy-store-fe.herokuapp.com")
@CrossOrigin(origins = SystemContance.LOCAL_HOST_4200)
public class UseObjectController {
	@Autowired
	IUserObjectService userObjectService;

	@GetMapping("/use-objects")
	private ResponseEntity<List<UseObjectDTO>> getAll() {
		List<UseObjectDTO> items = this.userObjectService.findAll();
		return ResponseEntity.ok(items);
	}
}
