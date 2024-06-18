package com.exam.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.exam.dto.MemberDTO;

@Mapper
public interface MemberMapper {
	
	public int memberAdd(MemberDTO dto);
	
	public MemberDTO login(Map<String, String> map);
	
	public MemberDTO mypage(String name);

}
