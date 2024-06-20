package com.exam.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class LoginController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@GetMapping("/login")
	public String loginForm() {
		
		return "loginForm";
	}
	
	@PostMapping("/login_fail")
	public String showLogin_failPage(ModelMap model) {
		logger.info("logger:showlogin_failPage");
		model.addAttribute("errorMessage", "아이디 및 비밀번호를 확인하세요.");
		return "loginForm";
	}
	
	@GetMapping("/login_success")
	public String showLogin_successPage() {
		logger.info("logger:showlogin_successPage");
		return "redirect:main";
	}
	
}
