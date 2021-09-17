package com.laptrinhjavaweb.api;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Order;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.dto.CouponDTO;
import com.laptrinhjavaweb.dto.PaginationResult;
import com.laptrinhjavaweb.dto.ProductDTO;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.repository.specification.builder.ProductSpecificationBuilder;
import com.laptrinhjavaweb.service.ICouponService;
import com.laptrinhjavaweb.service.IProductService;

@RestController
@RequestMapping(value = "/api")
@CrossOrigin(origins = "https://toy-store-fe.herokuapp.com")
public class ProductController {
	@Autowired
	private IProductService productService;

	@Autowired
	private ICouponService couponService;

	@Autowired
	private ModelMapper mp;

	@GetMapping("/product-page")
	private ResponseEntity<PaginationResult<ProductDTO>> showProduct(@RequestParam Map<String, Object> filterParams,
			@RequestParam(required = false) List<Long> ageIds, @RequestParam(required = false) Long genderId,
			@RequestParam(required = false) Long brandId, @RequestParam(required = false) List<Long> priceRange,
			@RequestParam(required = false) List<String> order, @RequestParam(required = true) int pageIndex,
			@RequestParam(required = true) int pageSize, @RequestParam(required = false) String page) {
		PaginationResult<ProductDTO> result = null;
		ProductSpecificationBuilder specBuild = new ProductSpecificationBuilder();
		Pageable pageable = new PageRequest(pageIndex, pageSize);
		/* Get specification */
		for (String key : filterParams.keySet()) {
			System.out.println(key);
			if (!StringUtils.isEmpty(key)) {
				/* Check by filter */
				switch (key) {
				case "ageIds":
					specBuild.with("ages", "in", ageIds);
					break;
				case "genderId":
					specBuild.with("genders", "in", genderId);
					System.out.println(genderId);
					break;
				case "brandId":
					specBuild.with("brand", "in", brandId);
					break;
				case "priceRange":
					specBuild.with("priceToBuy", "between", priceRange);
					break;
				case "page":
					System.out.println(page.getClass() + "   " + page);
					if (page.equals("sale")) {
						System.out.println(page.getClass() + page);
						specBuild.with("discountPercent", ">=", 1);
					}
					if (page.equals("new")) {
						System.out.println(page.getClass() + page);
						specBuild.with("isNew", "=", true);
					}
					break;
				case "order":
					String orderBy = order.get(0);
					String direction = order.get(1);
					List<Order> orders = new ArrayList<Order>();
					/* Setup orders */
					if (!StringUtils.isEmpty(orderBy) && !StringUtils.isEmpty(direction)) {
						if (direction.equals("asc")) {
							if (orderBy.equals("price")) {
								orders.add(new Order(Sort.Direction.ASC, "priceToBuy"));
							} else if (orderBy.equals("name")) {
								orders.add(new Order(Sort.Direction.ASC, "name"));
							}
						} else {
							if (orderBy.equals("price")) {
								orders.add(new Order(Sort.Direction.DESC, "priceToBuy"));
							} else if (orderBy.equals("name")) {
								orders.add(new Order(Sort.Direction.DESC, "name"));
							}
						}
					}
					pageable = new PageRequest(pageIndex, pageSize, new Sort(orders));
					break;
				default:
					break;
				}
			}
		}
		/* Get products by filters */
		List<ProductDTO> products = null;
		Long totalLength = null;
		if (specBuild.build() != null) {
			products = this.productService.showProducts(specBuild.build(), pageable);
			totalLength = this.productService.getTotalLength(specBuild.build());
			System.out.println(products);
		} else {
			products = this.productService.showProducts(pageable);
			totalLength = this.productService.getTotalLength();
		}
		System.err.println(products);
		result = new PaginationResult<ProductDTO>();
		result.setItems(products);
		result.setTotalLength(totalLength);
		return ResponseEntity.ok(result);
	}

	@GetMapping("/product-page/search")
	private ResponseEntity<PaginationResult<ProductDTO>> searchProducts(
			@RequestParam(required = true) String searchValue, @RequestParam int page, @RequestParam int limit) {
		Pageable pageable = new PageRequest(page, limit);
		List<ProductDTO> listDTO = this.productService.searchProducts(searchValue, pageable);
		PaginationResult<ProductDTO> result = new PaginationResult<ProductDTO>();
		result.setItems(listDTO);
		result.setTotalLength(this.productService.getLength(searchValue));
		return ResponseEntity.ok(result);
	}

	@GetMapping("/coupon")
	private ResponseEntity<CouponDTO> getCoupon(@RequestParam(name = "code") String code) {
		return ResponseEntity.ok(this.couponService.getOneByCode(code));
	}

	@GetMapping("product-detail")
	private ResponseEntity<ProductDTO> findOne(@RequestParam long productId) {
		ProductEntity foundProduct = this.productService.findById(productId);
		return ResponseEntity.ok(this.mp.map(foundProduct, ProductDTO.class));
	}
}
