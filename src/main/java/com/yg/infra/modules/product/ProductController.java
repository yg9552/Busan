package com.yg.infra.modules.product;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yg.infra.modules.member.Member;
import com.yg.infra.modules.member.MemberServiceImpl;
import com.yg.infra.modules.member.MemberVo;

@Controller
@RequestMapping(value = "/product/")
public class ProductController {

	@Autowired
	ProductServiceImpl service;
	
	@Autowired
	MemberServiceImpl servicem;
	
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
	
	@RequestMapping(value = "purchaseForm")
	public String purchaseForm(Model model, @ModelAttribute("vo") ProductVo vo, @ModelAttribute("dto") MemberVo dto) throws Exception {
		Product result = service.selectOne(vo);
		model.addAttribute("item", result);
		System.out.println("sdsd1s : " + vo.getMemberSeq());
		System.out.println("sdsds : " + dto.getMemberSeq());
        Member item2 = servicem.selectOne(dto);
		model.addAttribute("item2", item2);
		return "infra/product/xdmin/purchaseForm";
	}
	
	@RequestMapping(value = "productViewX")
	public String productViewX(Model model, @ModelAttribute("vo") ProductVo vo) throws Exception {
		Product result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/product/xdmin/productViewX"; 
	}
	
	@RequestMapping(value = "productForm")
	public String productForm(@ModelAttribute("vo") ProductVo vo) throws Exception {
		return "infra/product/xdmin/productForm";
	}
	
	@RequestMapping(value = "productInst")
	public String productInst(@ModelAttribute("vo") ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
		int result = service.insert(dto);
		System.out.println(result);
		
		vo.setProductSeq(dto.getProductSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/product/productViewX";
	}
	
	@RequestMapping(value = "productUpdt")
	public String productUpdt(@ModelAttribute("vo") ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/product/productViewX";
	}
	
	@RequestMapping(value = "productUele")
	public String productUele(@ModelAttribute("vo") ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
		service.uelete(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/product/productViewX";
	}
	
	@RequestMapping(value = "productDele")
	public String productDele(ProductVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/product/productListX";
	}
}
