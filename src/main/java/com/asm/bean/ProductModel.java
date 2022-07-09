package com.asm.bean;

import java.util.Date;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
public class ProductModel {
	
	@NotBlank(message = "Tên không được để trống")
	private String name;
	
	@NotBlank(message = "Ảnh không được để trống")
	private String image;
	
	@NotNull
	private int price;
	
	@NotNull
	private Date createdDate;
	
	@NotNull
	private int available;
	
	private int categoryId;
}
