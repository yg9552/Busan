package com.yg.infra.modules.purchase;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yg.infra.modules.member.Member;
import com.yg.infra.modules.member.MemberServiceImpl;
import com.yg.infra.modules.member.MemberVo;
import com.yg.infra.modules.memberAddr.MemberAddr;
import com.yg.infra.modules.memberAddr.MemberAddrServiceImpl;
import com.yg.infra.modules.memberAddr.MemberAddrVo;
import com.yg.infra.modules.memberCard.MemberCard;
import com.yg.infra.modules.memberCard.MemberCardServiceImpl;
import com.yg.infra.modules.memberCard.MemberCardVo;
import com.yg.infra.modules.memberTel.MemberTel;
import com.yg.infra.modules.memberTel.MemberTelServiceImpl;
import com.yg.infra.modules.memberTel.MemberTelVo;
import com.yg.infra.modules.product.Product;
import com.yg.infra.modules.product.ProductServiceImpl;
import com.yg.infra.modules.product.ProductVo;

@Controller
@RequestMapping(value = "/product/")
public class PurchaseController {

	@Autowired
	PurchaseServiceImpl service;
	
	@Autowired
	ProductServiceImpl servicep;
	@Autowired
	MemberServiceImpl servicem;
	@Autowired
	MemberAddrServiceImpl servicema;
	@Autowired
	MemberTelServiceImpl servicet;
	@Autowired
	MemberCardServiceImpl servicec;
	
	@RequestMapping(value = "purchaseListX")
	public String purchaseListX(@ModelAttribute("vo") PurchaseVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Purchase> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/purchase/xdmin/purchaseListX";
	}
	
	@RequestMapping(value = "purchaseList")
	public String purchaseList(@ModelAttribute("vo") PurchaseVo vo, Model model, HttpServletRequest httpServletRequest) throws Exception {
		HttpSession httpSession =  httpServletRequest.getSession();
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		
		vo.setMemberSeq(rtSeq);
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Purchase> list = service.selectList(vo);
		//Purchase item = service.selectOne(vo);
		//model.addAttribute("item", item);
		model.addAttribute("list", list);
		return "infra/purchase/xdmin/purchaseList";
	}
	
	@RequestMapping(value = "purchaseForm")
	public String purchaseForm(@ModelAttribute("vo") PurchaseVo vo, Model model, ProductVo vop, MemberVo vom, MemberAddrVo voma, MemberTelVo vot, MemberCardVo voc) throws Exception {
		Product itemp = servicep.selectOne(vop);
		model.addAttribute("itemp", itemp);
		Member itemm = servicem.selectOne(vom);
		model.addAttribute("itemm", itemm);
		List<MemberAddr> listma = servicema.selectList(voma);
		model.addAttribute("listma", listma);
		List<MemberTel> listt = servicet.selectList(vot);
		model.addAttribute("listt" ,listt);
		List<MemberCard> listc = servicec.selectList(voc);
		model.addAttribute("listc", listc);
		return "infra/product/xdmin/purchaseForm";
	}
	
	@RequestMapping(value = "purchaseKsnet")
	public String purchaseKsnet(@ModelAttribute("vo") PurchaseVo vo, Model model, ProductVo vop, MemberVo vom, MemberTelVo vot) throws Exception {
		Product itemp = servicep.selectOne(vop);
		model.addAttribute("itemp", itemp);
		Member itemm = servicem.selectOne(vom);
		model.addAttribute("itemm", itemm);
		List<MemberTel> listt = servicet.selectList(vot);
		model.addAttribute("listt" ,listt);
		return "infra/purchase/xdmin/purchaseKsnet";
	}
	
	@RequestMapping(value = "purchaseInst")
	public String purchaseInst(@ModelAttribute("vo") PurchaseVo vo, Purchase dto, RedirectAttributes redirectAttributes) throws Exception {
		
		int result = service.insert(dto);
		System.out.println(result);
		vo.setPurchaseSeq(dto.getPurchaseSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "infra/product/xdmin/Main";
	}
}
