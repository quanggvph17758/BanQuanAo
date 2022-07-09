package com.asm.controller.admin;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.asm.bean.AccountModel;
import com.asm.entities.Accounts;
import com.asm.repository.AccountRepository;
import com.asm.utils.EncryptUtils;

@Controller
@RequestMapping("/admin/accounts")
public class AccounController {
	@Autowired
	private AccountRepository accountRepo;
	
	@GetMapping("create")
	public String create(@ModelAttribute("account") AccountModel account) {

		return "admin/accounts/create";
	}

	@PostMapping("store")
	public String store(@Valid @ModelAttribute("account") AccountModel model, 
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

			this.accountRepo.save(acc);

			return "redirect:/admin/accounts/index";
		}

		return "admin/accounts/create";
	}

	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id") Accounts acc) {

		this.accountRepo.delete(acc);

		return "redirect:/admin/accounts/index";
	}

	@GetMapping("index")
	public String index(Model model, @RequestParam(name = "page", defaultValue = "0") int page,
			@RequestParam(name = "size", defaultValue = "10") int size) {

		Pageable pageable = PageRequest.of(page, size);

		Page<Accounts> p = this.accountRepo.findAll(pageable);
		model.addAttribute("data", p);

		return "admin/accounts/index";
	}

	@GetMapping("edit/{id}")
	public String edit(@PathVariable("id") int id, Model mol) {

		Optional<Accounts> acc = this.accountRepo.findById(id);
		mol.addAttribute("acc", acc.get());

		return "admin/accounts/edit";
	}

	@PostMapping("update")
	public String update(Accounts acc, AccountModel model) {

		String encryptPassord = EncryptUtils.encrypt(model.getPassword());
		acc.setPassword(encryptPassord);

		this.accountRepo.save(acc);

		return "redirect:/admin/accounts/index";

	}
}
