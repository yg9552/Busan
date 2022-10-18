package com.yg.infra.modules.productQA;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	@RequestMapping(value = "productQAListX")
	public String productQAListX(@ModelAttribute("vo") ProductQAVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		List<ProductQA> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/productQA/xdmin/productQAListX";
	}

	@RequestMapping(value = "productQAForm")
	public String productQAForm(@ModelAttribute("vo") ProductQAVo voqa, ProductVo vo, Model model) throws Exception {
		Product itemp = servicep.selectOne(vo);
		model.addAttribute("itemp", itemp);
		return "infra/productQA/xdmin/productQAForm";
	}
	
	@RequestMapping(value = "productQAViewX")
	public String productQAViewX(@ModelAttribute("vo") ProductQAVo vo, Model model) throws Exception {
		ProductQA item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/productQA/xdmin/productQAViewX";
	}
	@RequestMapping(value = "productQAInst")
	public String productQAInst(@ModelAttribute("vo") ProductVo vo, @ModelAttribute("voqa") ProductQAVo voqa, ProductQA dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		voqa.setQaSeq(dto.getQaSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/product/productView";
	}

	@RequestMapping(value = "productQAUpdt")
	public String productQAUpdt(@ModelAttribute("vo") ProductQAVo vo, ProductQA dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/product/productQAListX";
	}
	
	@RequestMapping(value = "productQAAns")
	public String productQAAns(@ModelAttribute("vo") ProductQAVo vo, ProductQA dto, RedirectAttributes redirectAttributes) throws Exception {
		service.answer(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/product/productQAViewX";
	}
	
	@RequestMapping(value = "productQADele")
	public String productQADele(ProductQAVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/product/productQAListX";
	}
}
