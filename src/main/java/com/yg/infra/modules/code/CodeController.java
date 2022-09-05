package com.yg.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value ="/code/")
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping(value = "codeList")
	public String codeList(Model model,CodeVo vo) throws Exception {
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		List<Code> list = service.selectlist(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
}
