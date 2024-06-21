package com.exam.service;

import java.util.List;

import com.exam.dto.BuyGoodsDTO;
import com.exam.dto.CartDTO;

public interface BuyGoodsService {

	public int buyGoods(List<CartDTO> listCartDTO);
	public List<BuyGoodsDTO> buyGoodsList(String userid);
}
