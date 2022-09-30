package com.yg.infra.modules.purchase;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/product/")
public class PurchaseController {

	@Autowired
	PurchaseServiceImpl service;
	
	@RequestMapping(value = "purchaseListX")
	public String purchaseListX(@ModelAttribute("vo") PurchaseVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Purchase> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/purchase/xdmin/purchaseListX";
	}
	@RequestMapping(value = "purchaseList")
	public String purchaseList(@ModelAttribute("vo") PurchaseVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Purchase> list = service.selectList(vo);
		Purchase item = service.selectOne(vo);
		model.addAttribute("item", item);
		model.addAttribute("list", list);
		return "infra/purchase/xdmin/purchaseList";
	}
	
}
