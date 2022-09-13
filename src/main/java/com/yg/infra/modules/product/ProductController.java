package com.yg.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/product/")
public class ProductController {

	@Autowired
	ProductServiceImpl sevice;
	
	@RequestMapping(value = "productList")
	public String productList(Model model) throws Exception {
		List<Product> list = sevice.selectList();
		model.addAttribute("list", list);
		return "infra/product/xdmin/productList";
	}
	
	@RequestMapping(value = "/")
	public String main(Model model) throws Exception {
		List<Product> list = sevice.selectList();
		model.addAttribute("list", list);
		return "infra/product/xdmin/Main";
	}
}
