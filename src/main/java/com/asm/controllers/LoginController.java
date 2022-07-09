package com.asm.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.asm.entities.Accounts;
import com.asm.repository.AccountRepository;
import com.asm.utils.EncryptUtils;

@Controller
public class LoginController {

	@Autowired
	private AccountRepository accRepo;

	@Autowired
	private HttpServletRequest request;

	@GetMapping("/login")
	public String getLoginForm() {
		return "/auth/login";
	}

	@PostMapping("/login")
	public String login(@RequestParam("email") String email, @RequestParam("password") String password) {

		HttpSession session = request.getSession();
		Accounts acc = this.accRepo.findByEmail(email);
		if (acc == null) {
			session.setAttribute("error", "Email hoặc mật khẩu đang trống");
			return "redirect:/login";
		}
		boolean checkpwd = EncryptUtils.check(password, acc.getPassword());
		if (checkpwd == true) {
			session.setAttribute("acc", acc);
			session.setAttribute("message", "Đăng nhập thành công");	
			return "redirect:/admin/accounts/index";
		} else {
			session.setAttribute("error", "Sai Email hoặc mật khẩu");
			return "redirect:/login";
		}

	}

}
