package com.yg.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@Autowired
	ProductServiceImpl service;
	
	@RequestMapping(value = "/Main")
	public String main(Model model, @ModelAttribute("vo") ProductVo vo) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Product> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/product/xdmin/Main";
	}
	@RequestMapping(value = "/")
	public String start() throws Exception {
		return "common/xdmin/index";
	}
	
}
