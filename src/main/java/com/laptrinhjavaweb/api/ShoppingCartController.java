package com.laptrinhjavaweb.api;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.dto.OrderItemDTO;
import com.laptrinhjavaweb.entity.OrderItemEntity;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.entity.ShoppingCartEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.service.IOrderItemService;
import com.laptrinhjavaweb.service.IProductService;
import com.laptrinhjavaweb.service.IShoppingCartService;
import com.laptrinhjavaweb.service.IUserService;

@RestController
@CrossOrigin(origins = "https://toy-store-fe.herokuapp.com/")
@RequestMapping(value = "/api/cart")
public class ShoppingCartController {
	@Autowired
	private IUserService userService;
	@Autowired
	private IShoppingCartService shoppingCartService;
	@Autowired
	private IOrderItemService orderItemService;
	@Autowired
	private IProductService productService;
	@Autowired
	private ModelMapper mp;

	@PostMapping("/update")
	private ResponseEntity<OrderItemDTO> updateCart(@RequestParam long userId,
			@RequestParam(required = false) String action, @RequestBody(required = false) OrderItemDTO orderItemDTO) {
		UserEntity user = this.userService.findById(userId);
		ShoppingCartEntity foundShoppingCart = this.shoppingCartService.findByUserAndStatus(user, 0);
		if (foundShoppingCart == null) {
			foundShoppingCart = new ShoppingCartEntity(0, user);
			this.shoppingCartService.save(foundShoppingCart);
		}
		ProductEntity updatingProduct = this.productService.findById(orderItemDTO.getProduct().getId());
		if (!StringUtils.isEmpty(action)) {
			OrderItemEntity updatingOrderItem = this.orderItemService.findByShoppingCartAndProduct(foundShoppingCart,
					updatingProduct);
			if (action.equals("add")) {
				if (updatingOrderItem != null) {
					updatingOrderItem.setQuantity(orderItemDTO.getQuantity());
				} else {
					updatingOrderItem = new OrderItemEntity(updatingProduct, orderItemDTO.getQuantity(),
							foundShoppingCart);
				}
				this.orderItemService.save(updatingOrderItem);
			} else if (action.equals("remove")) {
				this.orderItemService.remove(updatingOrderItem);
			}
		}
		return ResponseEntity.ok(orderItemDTO);
	}

	@PostMapping("/merge")
	private ResponseEntity<Set<OrderItemDTO>> mergeCart(@RequestParam long userId,
			@RequestBody List<OrderItemDTO> pendingOrderItemsDTO) {
		UserEntity user = this.userService.findById(userId);
		ShoppingCartEntity foundShoppingCart = this.shoppingCartService.findByUserAndStatus(user, 0);
		if (foundShoppingCart == null) {
			foundShoppingCart = new ShoppingCartEntity(0, user);
			this.shoppingCartService.save(foundShoppingCart);
		}
		for (OrderItemDTO updatingPendingOrderItem : pendingOrderItemsDTO) {
			ProductEntity foundProduct = this.productService.findById(updatingPendingOrderItem.getProduct().getId());
			OrderItemEntity foundOrderItem = this.orderItemService.findByShoppingCartAndProduct(foundShoppingCart,
					foundProduct);
			if (foundOrderItem != null) {
				int initialQuantity = foundOrderItem.getQuantity();
				foundOrderItem.setQuantity(initialQuantity + updatingPendingOrderItem.getQuantity());
			} else {
				foundOrderItem = new OrderItemEntity(foundProduct, updatingPendingOrderItem.getQuantity(),
						foundShoppingCart);
			}
			this.orderItemService.save(foundOrderItem);
		}
		Set<OrderItemDTO> result = new HashSet<OrderItemDTO>();
		Set<OrderItemEntity> orderItems = foundShoppingCart.getOrderItems();
		for (OrderItemEntity orderItem : orderItems) {
			result.add(this.mp.map(orderItem, OrderItemDTO.class));
		}
		return ResponseEntity.ok(result);
	}

	@GetMapping()
	private ResponseEntity<Set<OrderItemDTO>> getShoppingCart(@RequestParam long userId) {
		UserEntity user = this.userService.findById(userId);
		ShoppingCartEntity foundShoppingCart = this.shoppingCartService.findByUserAndStatus(user, 0);
		if (foundShoppingCart == null) {
			foundShoppingCart = new ShoppingCartEntity(0, user);
			this.shoppingCartService.save(foundShoppingCart);
		}
		Set<OrderItemEntity> orderItems = foundShoppingCart.getOrderItems();
		Set<OrderItemDTO> result = new HashSet<OrderItemDTO>();
		for (OrderItemEntity orderItemEntity : orderItems) {
			OrderItemDTO orderItemDTO = this.mp.map(orderItemEntity, OrderItemDTO.class);
			result.add(orderItemDTO);
		}
		return ResponseEntity.ok(result);
	}

}
