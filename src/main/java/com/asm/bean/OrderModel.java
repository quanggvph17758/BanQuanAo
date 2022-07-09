package com.asm.bean;

import java.util.Date;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Component
public class OrderModel {
	
	private int userId;
	
	@NotNull
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date createDate;
	
	@NotBlank(message = "Không được để trống địa chỉ")
	private String address;
	
}
