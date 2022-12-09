package com.yg.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yg.infra.modules.productReview.ProductReviewServiceImpl;
import com.yg.infra.modules.productReview.ProductReviewVo;
import com.yg.infra.modules.purchase.Purchase;
import com.yg.infra.modules.purchase.PurchaseServiceImpl;
import com.yg.infra.modules.purchase.PurchaseVo;

@Controller
public class MainController {

	@Autowired
	ProductServiceImpl service;
	@Autowired
	PurchaseServiceImpl servicePurchase;
	@Autowired
	ProductReviewServiceImpl serviceRv;
	
	@RequestMapping(value = "/Main")
	public String main(Model model, @ModelAttribute("vo") ProductVo vo) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Product> list = service.selectList(vo);
		model.addAttribute("list", list);
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		return "infra/product/xdmin/Main";
	}
	
	@RequestMapping(value = "/xdminMain")
	public String xdminMain(Model model, @ModelAttribute("vo") ProductVo vo, @ModelAttribute("vop") PurchaseVo vop, @ModelAttribute("vorv") ProductReviewVo vorv) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		vop.setParamsPaging(servicePurchase.selectOneCount(vop));
		vorv.setParamsPaging(serviceRv.selectOneCount(vorv));
		List<Purchase> listp = servicePurchase.selectList(vop);
		model.addAttribute("listp", listp);
		return "common/xdmin/xdminMain";
	}
	
	@RequestMapping(value = "/")
	public String start() throws Exception {
		return "common/xdmin/index";
	}
	
}
