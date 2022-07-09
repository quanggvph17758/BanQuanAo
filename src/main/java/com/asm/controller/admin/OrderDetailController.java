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

import com.asm.bean.OrderDetailModel;
import com.asm.entities.OrderDetails;
import com.asm.entities.Orders;
import com.asm.entities.Products;
import com.asm.repository.OrderDetailRepository;
import com.asm.repository.OrderRepository;
import com.asm.repository.ProductRepository;

@Controller
@RequestMapping("/admin/orderDetails")
public class OrderDetailController {
	
	@Autowired
	private OrderDetailRepository orderDetailRepo;
	
	@Autowired
	private OrderRepository ordeRepo;
	
	@Autowired
	private ProductRepository proRepo;

	@GetMapping("create")
	public String create(@ModelAttribute("orderDetail") OrderDetailModel orderDetail, Model mol) {
		
		List<Orders> ord = this.ordeRepo.findAll();
		mol.addAttribute("data", ord);
		
		List<Products> pro = this.proRepo.findAll();
		mol.addAttribute("data2", pro);
		
		return "admin/orderDetails/create";
	}

	@PostMapping("store")
	public String store(@Valid @ModelAttribute("orderDetail") OrderDetailModel model, BindingResult result) {

		if (result.hasErrors()) {
			System.out.println("form không hợp lệ");
		} else {
			System.out.println("form hợp lệ");
			
			OrderDetails orDe = new OrderDetails();
			
			orDe.setOrderId(model.getOrderId());
			orDe.setProductId(model.getProductId());
			orDe.setPrice(model.getPrice());
			orDe.setQuantity(model.getQuantity());

			this.orderDetailRepo.save(orDe);

			return "redirect:/admin/orderDetails/index";
		}

		return "admin/orderDetails/create";

	}

	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id") OrderDetails orDe) {

		this.orderDetailRepo.delete(orDe);

		return "redirect:/admin/orderDetails/index";
	}

	@GetMapping("index")
	public String index(Model model, @RequestParam(name = "page", defaultValue = "0") int page,
			@RequestParam(name = "size", defaultValue = "10") int size) {

		Pageable pageable = PageRequest.of(page, size);

		Page<OrderDetails> p = this.orderDetailRepo.findAll(pageable);
		model.addAttribute("data", p);

		return "admin/orderDetails/index";
	}

	@GetMapping("edit/{id}")
	public String edit(@PathVariable("id") int id, Model mol) {

		Optional<OrderDetails> orde = this.orderDetailRepo.findById(id);
		mol.addAttribute("orderDetail", orde.get());

		return "admin/orderDetails/edit";
	}

	@PostMapping("update")
	public String update(OrderDetails orde) {

		this.orderDetailRepo.save(orde);

		return "redirect:/admin/orderDetails/index";
	}
}
