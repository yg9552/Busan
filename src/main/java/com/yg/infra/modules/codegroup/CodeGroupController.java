package com.yg.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, CodeGroupVo vo) throws Exception {

		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
//	@RequestMapping(value = "codeGroupForm")
//	public String codeGroupForm() throws Exception {
//		return "infra/codegroup/xdmin/codeGroupForm";
//	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(Model model,@ModelAttribute("vo") CodeGroupVo vo) throws Exception {
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(Model model,@ModelAttribute("vo") CodeGroupVo vo) throws Exception {
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		
		return "infra/codegroup/xdmin/codeGroupView";
	}
	@RequestMapping (value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception{
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/codeGroup/codeGroupList";
	}
	@RequestMapping (value = "codeGroupUele")
	public String codeGroupUele(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		service.uelete(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/codeGroup/codeGroupList";
	}
	@RequestMapping(value = "codeGroupDele")
	public String codeGroupDele(CodeGroupVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/codeGroup/codeGroupList";
	}
}
