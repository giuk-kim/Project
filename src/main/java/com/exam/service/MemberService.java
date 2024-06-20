package com.exam.service;

import java.util.Map;

import com.exam.dto.MemberDTO;

public interface MemberService {

	public int memberAdd(MemberDTO dto);
	
	public MemberDTO login(Map<String, String> map);
	
	public MemberDTO mypage(String userid);
	
	public MemberDTO findById(String userid);

}
