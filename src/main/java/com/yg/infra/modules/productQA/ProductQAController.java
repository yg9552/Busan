package com.yg.infra.modules.productQA;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yg.infra.modules.product.Product;
import com.yg.infra.modules.product.ProductServiceImpl;
import com.yg.infra.modules.product.ProductVo;

@Controller
@RequestMapping(value = "/product/")
public class ProductQAController {
	
	@Autowired
	ProductQAServiceImpl service;
	
	@Autowired
	ProductServiceImpl servicep;
	
	@RequestMapping(value = "/productQAListX")
	public String productQAListX(@ModelAttribute("vo") ProductQAVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		List<ProductQA> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/productQA/xdmin/productQAListX";
	}

	@RequestMapping(value = "/productQAForm")
	public String productQAForm(@ModelAttribute("vo") ProductQAVo vo, ProductVo vop, Model model) throws Exception {
		Product itemp = servicep.selectOne(vop);
		model.addAttribute("itemp", itemp);
		
		return "infra/productQA/xdmin/productQAForm";
	}
}
