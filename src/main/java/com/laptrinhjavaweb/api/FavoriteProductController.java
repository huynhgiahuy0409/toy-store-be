package com.laptrinhjavaweb.api;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.domain.Specifications;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.constance.SystemContance;
import com.laptrinhjavaweb.dto.FavoriteProductDTO;
import com.laptrinhjavaweb.dto.PaginationResult;
import com.laptrinhjavaweb.entity.FavoriteProductEntity;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.service.IFavoriteProductService;
import com.laptrinhjavaweb.service.IProductService;
import com.laptrinhjavaweb.service.IUserService;

@RestController
@RequestMapping("/api/favorite-product")
//@CrossOrigin(origins = "https://toy-store-fe.herokuapp.com")
@CrossOrigin(origins = SystemContance.LOCAL_HOST_4200)
public class FavoriteProductController {
	@Autowired
	private IProductService productService;
	@Autowired
	private IUserService userService;
	@Autowired
	private IFavoriteProductService favProductService;
	@Autowired
	private ModelMapper mp;

	@PostMapping
	public ResponseEntity<FavoriteProductDTO> addToWishlist(@RequestParam long userId, @RequestParam long productId) {
		ProductEntity foundProduct = this.productService.findById(productId);
		UserEntity foundUser = this.userService.findById(userId);

		FavoriteProductEntity foundFavoriteProduct = this.favProductService.findByUserAndProduct(foundUser,
				foundProduct);
		if (foundFavoriteProduct != null) {
			return null;
		} else {
			FavoriteProductEntity newFavoritProduct = new FavoriteProductEntity(foundUser, foundProduct);
			foundFavoriteProduct = this.favProductService.saveAndFlush(newFavoritProduct);
			return ResponseEntity.ok(this.mp.map(foundFavoriteProduct, FavoriteProductDTO.class));
		}
	}

	@GetMapping()
	public ResponseEntity<PaginationResult<FavoriteProductDTO>> findAll(@RequestParam String action,
			@RequestParam(required = false) Long favProductId, @RequestParam long userId, @RequestParam int pageIndex,
			@RequestParam int limit) {
		UserEntity foundUser = this.userService.findById(userId);
		Specification<FavoriteProductEntity> spec = new Specification<FavoriteProductEntity>() {
			@Override
			public Predicate toPredicate(Root<FavoriteProductEntity> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				// TODO Auto-generated method stub
				return cb.equal(root.get("user"), foundUser);
			}
		};
		Pageable pageable = new PageRequest(pageIndex, limit);
		List<FavoriteProductEntity> foundFavProducts = null;
		if (action.equals("view")) {
			System.out.println(favProductId);
			System.out.println(action);
			foundFavProducts = this.favProductService.findAll(spec, pageable);
		} else if (action.equals("remove")) {
			this.favProductService.delete(favProductId);
			foundFavProducts = this.favProductService.findAll(spec, pageable);
		}
		System.out.println(favProductId);
		System.out.println(action);
		long totalLength = this.favProductService.count(spec);
		List<FavoriteProductDTO> favProductsDTO = new ArrayList<FavoriteProductDTO>();
		for (FavoriteProductEntity favoriteProductEntity : foundFavProducts) {
			favProductsDTO.add(this.mp.map(favoriteProductEntity, FavoriteProductDTO.class));
		}
		PaginationResult<FavoriteProductDTO> result = new PaginationResult<FavoriteProductDTO>(favProductsDTO,
				totalLength);
		return ResponseEntity.ok(result);
	}
}
