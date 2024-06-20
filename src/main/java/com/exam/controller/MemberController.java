package com.exam.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.exam.dto.MemberDTO;
import com.exam.service.MemberService;


@Controller
public class MemberController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	MemberService memberService;
	
	public MemberController(MemberService memberService) {
		this.memberService = memberService;
	}

	@GetMapping("/signup")
	public String signupForm(ModelMap m) {
		
		m.put("memberDTO", new MemberDTO());
		
		return "memberForm";
	}
	@PostMapping("/signup")
	public String signup(@Valid MemberDTO  dto, BindingResult result) {
		
		if(result.hasErrors()) {
			return "memberForm";
		}
		//DB연동
		logger.info("logger:signup:{}", dto);
		
		// 비번 암호화 필수
		String encptPw = new BCryptPasswordEncoder().encode(dto.getPasswd());
		dto.setPasswd(encptPw);
		
		int n = memberService.memberAdd(dto);
		
		return "redirect:main";
	}
	
	@GetMapping("/mypage")
	public String mypage(ModelMap m) {
		
		// 세션에 저장된 MemberDTO 얻기
		MemberDTO dto = (MemberDTO)m.getAttribute("login");
		logger.info("loggerLmypage:{}", dto);
		String userid = dto.getUserid();
		
		MemberDTO searchDTO = memberService.mypage(userid);
		m.addAttribute("login", searchDTO);
		
		return "mypage";
	}
	
}
