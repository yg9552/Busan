package com.yg.infra.modules.memberAddr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/member/")
public class MemberAddrController {

	@Autowired
	MemberAddrServiceImpl service;
	
	@RequestMapping(value = "memberAddrList")
	public String memberAddrList(Model model, @ModelAttribute("vo") MemberAddrVo vo) throws Exception {
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<MemberAddr> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/memberAddr/xdmin/memberAddrList";
	}
}
