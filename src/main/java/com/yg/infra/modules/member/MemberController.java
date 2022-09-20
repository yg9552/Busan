package com.yg.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "memberList")
	public String memberList(Model model,@ModelAttribute("vo") MemberVo vo) throws Exception{
		
		//검색창 초기값
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value = "memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo) throws Exception {
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "memberInst")
	public String memberInst(@ModelAttribute("vo") MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberView";
	}
	
	@RequestMapping(value = "memberView")
	public String memberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/member/xdmin/memberView";
	}
}
