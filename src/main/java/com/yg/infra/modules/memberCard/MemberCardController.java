package com.yg.infra.modules.memberCard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/member/")
public class MemberCardController {
	
	@Autowired
	MemberCardServiceImpl service;
	
	@RequestMapping(value = "memberCardList")
	public String memberCardList(@ModelAttribute("vo") MemberCardVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<MemberCard> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/memberCard/xdmin/memberCardList";
	}
}
