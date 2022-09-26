package com.yg.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/product/")
public class ProductController {

	@Autowired
	ProductServiceImpl service;
	
	@RequestMapping(value = "productList")
	public String productList(Model model,@ModelAttribute("vo") ProductVo vo) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Product> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/product/xdmin/productList";
	}
	
	@RequestMapping(value = "productListX")
	public String productListX(Model model, @ModelAttribute("vo") ProductVo vo) throws Exception {
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Product> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/product/xdmin/productListX";
	}
	
	@RequestMapping(value = "productView")
	public String productView(Model model, @ModelAttribute("vo") ProductVo vo) throws Exception {
		Product result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/product/xdmin/productView";
	}
}
