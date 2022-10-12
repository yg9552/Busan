package com.yg.infra.modules.productReview;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/product/")
public class ProductReviewController {

	@Autowired
	ProductReviewServiceImpl service;
	
	@RequestMapping(value = "productReviewListX")
	public String productReviewListX(@ModelAttribute("vo") ProductReviewVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		List<ProductReview> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/productReview/xdmin/productReviewListX";
	}
	
	@RequestMapping(value = "productReviewInst")
	public String productReviewInst(@ModelAttribute("vo") ProductReviewVo vo, ProductReview dto, RedirectAttributes redirectAttributes) throws Exception {
		int result = service.insert(dto);
		System.out.println(result);
		
		vo.setRvSeq(dto.getRvSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/product/productView";
	}
}
