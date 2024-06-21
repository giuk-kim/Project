package com.exam.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.exam.dto.BuyGoodsDTO;
import com.exam.dto.CartDTO;
import com.exam.dto.MemberDTO;
import com.exam.service.BuyGoodsService;

@Controller
@SessionAttributes(names = { "healthRetrieve","cartList" })
public class BuyGoodsController {

	Logger logger = LoggerFactory.getLogger(getClass());

	BuyGoodsService buyGoodsService;
	
	public BuyGoodsController(BuyGoodsService buyGoodsService) {
		this.buyGoodsService = buyGoodsService;
	}

	@PostMapping("/buy")
	public String buy(ModelMap m) {
		
		List<CartDTO> listCartDTO = (List<CartDTO>)m.getAttribute("cartList");
		logger.info("logger:{}",listCartDTO);
		
		
		int n = buyGoodsService.buyGoods(listCartDTO);
		
		
		return "main";
	}
	
	@GetMapping("/buyGoods")
	public String buyGoods(ModelMap m) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		MemberDTO memberDTO = (MemberDTO) auth.getPrincipal();
		String userid = memberDTO.getUserid();
		
		List<BuyGoodsDTO> buyGoodsDTOList = buyGoodsService.buyGoodsList(userid);

		m.addAttribute("buyGoodsDTOList", buyGoodsDTOList);
		
		return "buyGoods";
	}



	


}
