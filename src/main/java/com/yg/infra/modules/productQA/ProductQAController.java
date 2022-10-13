package com.yg.infra.modules.productQA;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/product/")
public class ProductQAController {
	
	@Autowired
	ProductQAServiceImpl service;
	
	@RequestMapping(value = "/productQAListX")
	public String productQAListX(@ModelAttribute("vo") ProductQAVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		List<ProductQA> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/productQA/xdmin/productQAListX";
	}

}
