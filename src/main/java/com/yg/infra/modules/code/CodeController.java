package com.yg.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yg.infra.modules.codegroup.CodeGroup;
import com.yg.infra.modules.codegroup.CodeGroupServiceImpl;

@Controller
@RequestMapping(value ="/code/")
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	@Autowired
	CodeGroupServiceImpl service2;
	
	@RequestMapping(value = "codeList")
	public String codeList(Model model,CodeVo vo) throws Exception {
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		List<Code> list = service.selectlist(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
	
	@RequestMapping(value = "codeForm")
	public String codeForm(Model model) throws Exception {
		List<CodeGroup> list2 = service2.selectList();
		model.addAttribute("list2", list2);
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		return "redirect:/code/codeList";
	}
}
