package com.asm.bean;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Component
public class OrderDetailModel {
	
	private int orderId;
	
	private int productId;
	
	@NotNull
	private float price;
	
	@NotNull
	private int quantity;

}
