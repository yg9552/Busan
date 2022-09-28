package com.yg.infra.modules.memberTel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/member/")
public class MemberTelController {

	@Autowired
	MemberTelServiceImpl service;
	
	@RequestMapping(value = "memberTelList")
	public String memberTelList(@ModelAttribute("vo") MemberTelVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<MemberTel> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/memberTel/xdmin/memberTelList";
	}
}
