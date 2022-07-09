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

import com.asm.bean.CategoryModel;
import com.asm.entities.Categories;
import com.asm.repository.CategoryRepository;

@Controller
@RequestMapping("/admin/categories")
public class CategoryController {

	@Autowired
	private CategoryRepository cateRepo;

	@GetMapping("create")
	public String create(@ModelAttribute("category") CategoryModel cate) {
		return "admin/categories/create";
	}

	@PostMapping("store")
	public String store(@Valid @ModelAttribute("category") CategoryModel mol, BindingResult result) {

		if (result.hasErrors()) {
			System.out.println("form không hợp lệ");
		} else {
			System.out.println("form hợp lệ");

			Categories cate = new Categories();
			cate.setName(mol.getName());

			this.cateRepo.save(cate);

			return "redirect:/admin/categories/index";
		}
		
		return "admin/categories/create";
		
	}

	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id") Categories cate) {

		this.cateRepo.delete(cate);

		return "redirect:/admin/categories/index";
	}

	@GetMapping("index")
	public String index(Model model, @RequestParam(name = "page", defaultValue = "0") int page,
			@RequestParam(name = "size", defaultValue = "10") int size) {

		Pageable pageable = PageRequest.of(page, size);

		Page<Categories> p = this.cateRepo.findAll(pageable);
		model.addAttribute("data", p);

		return "admin/categories/index";
	}

	@GetMapping("edit/{id}")
	public String edit(@PathVariable("id") int id, Model mol) {

		Optional<Categories> cate = this.cateRepo.findById(id);
		mol.addAttribute("cate", cate.get());

		return "admin/categories/edit";
	}

	@PostMapping("update")
	public String update(Categories cate) {

		this.cateRepo.save(cate);

		return "redirect:/admin/categories/index";
	}
}
