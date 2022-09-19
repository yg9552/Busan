package com.yg.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String codeList(Model model, @ModelAttribute("vo") CodeVo vo) throws Exception {
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Code> list = service.selectlist(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
	
	@RequestMapping(value = "codeForm")
	public String codeForm(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		List<CodeGroup> list2 = service2.selectMini();
		model.addAttribute("list2", list2);
		
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value = "codeView") 
	  public String codeGroupView(Model model, @ModelAttribute("vo") CodeVo vo) throws Exception { 
		
		Code result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		List<CodeGroup> list2 = service2.selectMini();
		model.addAttribute("list2", list2);
	  
	  	  return "infra/code/xdmin/codeView"; 
	  }
	
	
	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto, @ModelAttribute("vo") CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		vo.setCodeSeq(dto.getCodeSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/code/codeView";
	}
	
	@RequestMapping(value = "codeUpdt")
	public String codeUpdt(Code dto, CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeUele")
	public String codeUele(Code dto, CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.uelete(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeDele")
	public String codeDele(CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/code/codeList";
	}
}
