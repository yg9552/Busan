package com.yg.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yg.infra.common.constants.Constants;
import com.yg.infra.common.util.UtilSecurity;
import com.yg.infra.modules.cart.CartServiceImpl;
import com.yg.infra.modules.cart.CartVo;
import com.yg.infra.modules.product.ProductVo;
import com.yg.infra.modules.productQA.ProductQAServiceImpl;
import com.yg.infra.modules.productQA.ProductQAVo;
import com.yg.infra.modules.productReview.ProductReviewServiceImpl;
import com.yg.infra.modules.productReview.ProductReviewVo;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	@Autowired
	ProductQAServiceImpl serviceqa;
	@Autowired
	ProductReviewServiceImpl servicerv;
	@Autowired
	CartServiceImpl servicecart;
	
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
	
	@RequestMapping(value = "memberReg")
	public String memberReg(@ModelAttribute("vo") MemberVo vo) throws Exception {
		return "infra/member/xdmin/memberReg";
	}
	
	@RequestMapping(value = "memberInst")
	public String memberInst(@ModelAttribute("vo") MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setMemberSeq(dto.getMemberSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "infra/member/xdmin/memberRegCompl";
	}
	
	@RequestMapping(value = "memberRegCompl")
	public String memberRegCompl() throws Exception {
		return "infra/member/xdmin/memberRegCompl";
	}
	
	@RequestMapping(value = "memberView")
	public String memberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/member/xdmin/memberView";
	}
	@RequestMapping(value = "memberMod")
	public String memberMod(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/member/xdmin/memberMod";
	}
	
	@RequestMapping(value = "findIdPwForm")
	public String findIdPwForm() throws Exception {
		return "infra/member/xdmin/findIdPwForm";
	}
	
	@RequestMapping(value = "memberUpdtPw")
	public String memberUpdtPw(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.updatePw(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberMod";
	}
	
	@RequestMapping(value = "memberUpdt")
	public String memberUpdt(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberView";
	}
	
	@RequestMapping(value = "memberUele")
	public String memberUele(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.uelete(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberView";
	}
	
	@RequestMapping(value = "memberDele")
	public String memberDele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "memberLogin")
	public String memberLogin() throws Exception {
		return "infra/member/xdmin/memberLogin";
	}
	@RequestMapping(value = "xdminLogin")
	public String xdminLogin() throws Exception {
		return "infra/member/xdmin/xdminLogin";
	}
	
	@RequestMapping(value = "memberMyPage")
	public String memberMyPage(@ModelAttribute("vo") MemberVo vo, Model model, @ModelAttribute("voqa") ProductQAVo voqa, @ModelAttribute("voct") CartVo voct, @ModelAttribute("vorv") ProductReviewVo vorv, @ModelAttribute("vop") ProductVo vop) throws Exception {
		voqa.setParamsPaging(serviceqa.selectOneCount(voqa));
		vorv.setParamsPaging(servicerv.selectOneCount(vorv));
		voct.setParamsPaging(servicecart.selectOneCount(voct));
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/member/xdmin/memberMyPage";
	}
	
	//id check
	@ResponseBody
	@RequestMapping(value = "checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneIdCheck(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	//id Pw find
	@ResponseBody
	@RequestMapping(value = "findId")
	public Map<String, Object> findId(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member result = service.selectFindId(dto);
		
		if (result == null) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
			returnMap.put("id", result.getId());
		}
		return returnMap;
	}
	@ResponseBody
	@RequestMapping(value = "findPw")
	public Map<String, Object> findPw(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		Member result = service.selectFindPw(dto);
		
		if (result == null) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	
	//login
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Member rtMember = service.selectOneId(dto);

		if (rtMember != null) {
			dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
			Member rtMember2 = service.selectOneLogin(dto);

			if (rtMember2 != null) {
				
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getMemberSeq());
				httpSession.setAttribute("sessId", rtMember2.getId());
				httpSession.setAttribute("sessName", rtMember2.getNm());

				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "kakaoLoginProc")
	public Map<String, Object> kakaoLoginProc(Member dto, HttpSession httpSession) throws Exception {
	    Map<String, Object> returnMap = new HashMap<String, Object>();
	    
		Member kakaoLogin = service.snsLoginCheck(dto);
		
		 System.out.println("test : " + dto.getToken());
		
		if (kakaoLogin == null) {
			service.kakaoInst(dto);
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			// session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
            session(dto, httpSession); 
			returnMap.put("rt", "success");
		} else {
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			
			// session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
			session(kakaoLogin, httpSession);
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "naverLoginProc")
	public Map<String, Object> naverLoginProc(Member dto, HttpSession httpSession) throws Exception {
	    Map<String, Object> returnMap = new HashMap<String, Object>();
	    
		Member naverLogin = service.snsLoginCheck(dto);
		
		if (naverLogin == null) {
			service.naverInst(dto);
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			// session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
            session(dto, httpSession); 
			returnMap.put("rt", "success");
		} else {
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			
			// session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
			session(naverLogin, httpSession);
			returnMap.put("rt", "success");
		}
		return returnMap;
	}

	 public void session(Member dto, HttpSession httpSession) {
	     httpSession.setAttribute("sessSeq", dto.getMemberSeq());    
	     httpSession.setAttribute("sessId", dto.getId());
	     httpSession.setAttribute("sessName", dto.getNm());
	     httpSession.setAttribute("sessEmail", dto.getEmail());
//	     httpSession.setAttribute("sessUser", dto.getUser_div());
//	     httpSession.setAttribute("sessSns", dto.getSns_type());
	 }
	
	//logout
	@ResponseBody
	@RequestMapping(value = "logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
//	@ResponseBody
//	@RequestMapping(value = "logoutProc")
//	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
//		Map<String, Object> returnMap = new HashMap<String, Object>();
//		
//		String sns = httpSession.getAttribute("sessSns").toString();
//		System.out.println("test : " + sns);
//		
//		if (sns.equals("1")) {
//		    System.out.println("네이버 로그아웃 왜 안됨?");
//		    httpSession.invalidate();
//		    returnMap.put("rt", "naver");
//		} else {
//		    httpSession.invalidate();
//		    returnMap.put("rt", "success");
//		}
//
//		return returnMap;
//	}
//	
}
