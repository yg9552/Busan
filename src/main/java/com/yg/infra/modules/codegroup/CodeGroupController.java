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
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {

		//검색창 초기값
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
//		vo.setShOption(vo.getShOption() == null ? 2 : vo.getShOption());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);

		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupAjaxList")
	public String codeGroupAjaxList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
		return "infra/codegroup/xdmin/codeGroupAjaxList";
	}
	
	@RequestMapping(value = "codeGroupAjaxLita")
	public String codeGroupAjaxLita(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/codegroup/xdmin/codeGroupAjaxLita";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo) throws Exception {
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
//	@RequestMapping(value = "codeGroupForm")
//	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
//		if (vo.getSeq().equals("0") || vo.getSeq().equals("")) {
//			//insert
//		} else {
//			CodeGroup result = service.selectOne(vo);
//			model.addAttribute("item", result);
//		}
//		CodeGroup result = service.selectOne(vo);
//		model.addAttribute("item", result);
//		return "infra/codegroup/xdmin/codeGroupForm";
//	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(@ModelAttribute("vo") CodeGroupVo vo,CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupView";
	}

	
	  @RequestMapping(value = "codeGroupView") 
	  public String codeGroupView(Model model, @ModelAttribute("vo") CodeGroupVo vo) throws Exception { 
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
