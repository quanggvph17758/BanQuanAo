package com.asm.controller.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.entities.Products;
import com.asm.repository.ProductRepository;

@Controller
@RequestMapping("/member/sell")
public class SellController {

	@Autowired
	private ProductRepository proRepo;
	
	@GetMapping("/index")
	public String sell(Model mol) {
		
		List<Products> pro = this.proRepo.findAll();
		mol.addAttribute("pro", pro);
		
		return "/member/sell/index";
	}
}
