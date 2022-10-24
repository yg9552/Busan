package com.yg.infra.modules.cart;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@RequestMapping(value = "/member/")
public class CartController {
	@Autowired
	CartServiceImpl service;
	
	@RequestMapping(value = "cartList")
	public String cartList(@ModelAttribute("vo") CartVo vo, Model model, HttpServletRequest httpServletRequest) throws Exception {
		HttpSession httpSession =  httpServletRequest.getSession();
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		
		vo.setMemberSeq(rtSeq);
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Cart> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/cart/xdmin/cartList";
	}
	@RequestMapping(value = "cartInst")
	public String cartInst(@ModelAttribute("vo") CartVo vo, Cart dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		
		vo.setCartSeq(dto.getCartSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/cartList";
	}
	
	@RequestMapping(value = "cartDele")
	public String cartDele(@ModelAttribute("vo") CartVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/cartList";
	}

}
