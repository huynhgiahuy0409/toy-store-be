package com.laptrinhjavaweb.api;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.dto.CreditCardDTO;
import com.laptrinhjavaweb.dto.OrderDTO;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.dto.order.OrderRequestDTO;
import com.laptrinhjavaweb.dto.order.OrderResponseDTO;
import com.laptrinhjavaweb.entity.CreditCardEntity;
import com.laptrinhjavaweb.entity.OrderEntity;
import com.laptrinhjavaweb.entity.PaymentEntity;
import com.laptrinhjavaweb.entity.ShoppingCartEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.service.ICreditCardService;
import com.laptrinhjavaweb.service.IOrderService;
import com.laptrinhjavaweb.service.IPaymentService;
import com.laptrinhjavaweb.service.IProductService;
import com.laptrinhjavaweb.service.IShoppingCartService;
import com.laptrinhjavaweb.service.IUserService;

@RestController
@RequestMapping(value = "/api/order")
@CrossOrigin(origins = "http://localhost:4200")
public class OrderController {
	@Autowired
	private IUserService userService;
	@Autowired
	private IShoppingCartService shoppingCartService;
	@Autowired
	private IPaymentService paymentService;
	@Autowired
	private IProductService productService;
	@Autowired
	private IOrderService orderService;
	@Autowired
	private ICreditCardService creditCardService;
	@Autowired
	private ModelMapper mp;

	@PostMapping()
	public ResponseEntity<OrderRequestDTO> createOrder(@RequestBody OrderRequestDTO orderRequest) {
		UserEntity foundUser = this.userService.findById(orderRequest.getUserId());
		ShoppingCartEntity shoppingCart = this.shoppingCartService.findByUserAndStatus(foundUser, 0);
		PaymentEntity savedPayment = null;
		CreditCardDTO updatingCreditCard = orderRequest.getCreditCard();
		if (updatingCreditCard != null) {
			CreditCardEntity foundCreditCard = this.creditCardService.findByCardNumberAndExpiredDateAndUser(
					updatingCreditCard.getCardNumber(), updatingCreditCard.getExpiredDate(), foundUser);
			if (foundCreditCard == null) {
				CreditCardEntity newCreditCard = this.mp.map(updatingCreditCard, CreditCardEntity.class);
				newCreditCard.setUser(foundUser);
				foundCreditCard = this.creditCardService.saveAndFlush(newCreditCard);
			}
			savedPayment = this.paymentService.save(new PaymentEntity(foundCreditCard, 1));
		} else {
			savedPayment = this.paymentService.save(new PaymentEntity(null, 0));
		}
		OrderEntity order = new OrderEntity(foundUser, orderRequest.getTotalPayment(), savedPayment);
		OrderEntity savedOrder = this.orderService.saveAndFlush(order);
		shoppingCart.getOrderItems().forEach(orderItem -> {
			orderItem.setOrder(savedOrder);
		});
		shoppingCart.setStatus(1);
		this.shoppingCartService.save(shoppingCart);
		return ResponseEntity.ok(orderRequest);
	}

	@GetMapping()
	private ResponseEntity<List<OrderDTO>> getRecentOrdersByUserId(@RequestParam long userId, @RequestParam int limit) {
		Pageable pageable = new PageRequest(0, limit, new Sort(Sort.Direction.DESC, "createdDate"));
		List<OrderEntity> orders = this.orderService.findByUserId(userId, pageable);
		List<OrderDTO> result = new ArrayList<OrderDTO>(); 
		for (OrderEntity orderEntity : orders) {  
			result.add(this.mp.map(orderEntity, OrderDTO.class));
			System.out.println(this.mp.map(orderEntity, OrderDTO.class));
		} 
//		for (OrderEntity orderEntity : orders) {
//			result.add(this.mp.map(orderEntity, OrderDTO.class));
//		}
		return ResponseEntity.ok(result);
	}
}
