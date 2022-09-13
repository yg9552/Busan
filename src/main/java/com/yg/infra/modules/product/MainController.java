package com.yg.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@Autowired
	ProductServiceImpl service;
	
	@RequestMapping(value = "/")
	public String main(Model model) throws Exception {
		List<Product> list = service.selectList();
		model.addAttribute("list", list);
		return "infra/product/xdmin/Main";
	}
}
