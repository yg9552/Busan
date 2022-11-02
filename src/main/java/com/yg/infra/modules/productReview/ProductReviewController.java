package com.yg.infra.modules.productReview;

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
import com.yg.infra.modules.purchase.PurchaseVo;

@Controller
@RequestMapping(value = "/product/")
public class ProductReviewController {

	@Autowired
	ProductReviewServiceImpl service;
	
	@Autowired
	ProductServiceImpl servicep;
	
	@RequestMapping(value = "productReviewListX")
	public String productReviewListX(@ModelAttribute("vo") ProductReviewVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		List<ProductReview> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/productReview/xdmin/productReviewListX";
	}
	
	@RequestMapping(value = "productReviewForm")
	public String productReviewForm(@ModelAttribute("vo") ProductReviewVo vo, @ModelAttribute("vop") ProductVo vop, Model model) throws Exception {
		Product itemp = servicep.selectOne(vop);
		model.addAttribute("itemp", itemp);
		return "infra/productReview/xdmin/productReviewForm";
	}
	
	@RequestMapping(value = "productReviewInst")
	public String productReviewInst(@ModelAttribute("vo") ProductReviewVo vorv, ProductVo vop, ProductReview dto, @ModelAttribute("vo") PurchaseVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		
		vorv.setRvSeq(dto.getRvSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/product/purchaseList";
	}
}
