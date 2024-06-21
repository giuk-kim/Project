package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.exam.dto.BuyGoodsDTO;
import com.exam.dto.CartDTO;

@Mapper
public interface BuyGoodsMapper {

	public int buyGoods(List<CartDTO> listCartDTO);
	public List<BuyGoodsDTO> buyGoodsList(String userid);
}
