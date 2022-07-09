package com.asm.controller.admin;


import java.util.List;
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

import com.asm.bean.ProductModel;
import com.asm.entities.Categories;
import com.asm.entities.Products;
import com.asm.repository.CategoryRepository;
import com.asm.repository.ProductRepository;

@Controller
@RequestMapping("/admin/products")
public class ProductController {

	@Autowired
	private ProductRepository proRepo;
	
	@Autowired
	private CategoryRepository cateRepo;

	@GetMapping("create")
	public void create(@ModelAttribute("product") ProductModel product, Model mol) {
		
		List<Categories> cate = this.cateRepo.findAll();
		mol.addAttribute("data", cate);
		
		//return "admin/products/create";
	}

	@PostMapping("store")
	public String store(@Valid @ModelAttribute("product") ProductModel mol, BindingResult result) {

		if (result.hasErrors()) {
			System.out.println("form không hợp lệ");
		} else {
			System.out.println("form hợp lệ");
			Products pro = new Products();
			pro.setName(mol.getName());
			pro.setImage(mol.getImage());
			pro.setPrice(mol.getPrice());
			pro.setCreatedDate(mol.getCreatedDate());
			pro.setAvailable(mol.getAvailable());
			pro.setCategoryId(mol.getCategoryId());

			this.proRepo.save(pro);

			return "redirect:/admin/products/index";
		}

		return "admin/products/create";
	}

	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id") Products pro) {

		this.proRepo.delete(pro);

		return "redirect:/admin/products/index";
	}

	@GetMapping("index")
	public String index(Model model, @RequestParam(name = "page", defaultValue = "0") int page,
			@RequestParam(name = "size", defaultValue = "10") int size) {

		Pageable pageable = PageRequest.of(page, size);

		Page<Products> p = this.proRepo.findAll(pageable);
		model.addAttribute("data", p);

		return "admin/products/index";
	}

	@GetMapping("edit/{id}")
	public String edit(@PathVariable("id") int id, Model mol) {

		Optional<Products> pro = this.proRepo.findById(id);
		mol.addAttribute("pro", pro.get());

		return "admin/products/edit";
	}

	@PostMapping("update")
	public String update(Products pro) {

		this.proRepo.save(pro);

		return "redirect:/admin/products/index";
	}

}
