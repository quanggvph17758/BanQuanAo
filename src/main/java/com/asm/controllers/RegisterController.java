package com.asm.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.asm.bean.AccountModel;
import com.asm.entities.Accounts;
import com.asm.repository.AccountRepository;
import com.asm.utils.EncryptUtils;

@Controller
public class RegisterController {
	
	@Autowired
	private AccountRepository accRepo;
	
	@GetMapping("/register")
	public String getRegisterForm(@ModelAttribute("account") AccountModel account) {
		return "/auth/register";
	}

	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("account") AccountModel model, 
			BindingResult result) {

		if (result.hasErrors()) {
			System.out.println("form không hợp lệ");
		} else {
			System.out.println("form hợp lệ");
			Accounts acc = new Accounts();

			String encryptPassord = EncryptUtils.encrypt(model.getPassword());

			acc.setFullname(model.getFullname());
			acc.setUsername(model.getUsername());
			acc.setEmail(model.getEmail());
			acc.setPassword(encryptPassord);
			acc.setPhoto(model.getPhoto());
			acc.setActivated(model.getActivated());
			acc.setAdmin(model.getAdmin());

			this.accRepo.save(acc);

			return "redirect:/admin/accounts/index";
		}

		return "/register";

	}
}
