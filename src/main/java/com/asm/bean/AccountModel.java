package com.asm.bean;

import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Component
public class AccountModel {
	
	@NotBlank(message = "Không được để trống họ tên")
	private String fullname;
	
	@NotBlank(message = "Không được để trống email")
	@Pattern(regexp = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$", message = "Email không đúng định dạng")
	private String email;
	
	@NotBlank(message = "Không được để trống username")
	private String username;
	
	@NotBlank(message = "Không được để trống password")
	@Min(6)
	private String password;
	
	@NotBlank(message = "không được để trống ảnh")
	private String photo;
	
	private int activated;
	
	private int admin;
	
}
