package com.exam.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.exam.dto.CartDTO;
import com.exam.mapper.BuyGoodsMapper;

@Service
public class BuyGoodsServiceImpl implements BuyGoodsService {

	BuyGoodsMapper buyGoodsMapper;
	
	public BuyGoodsServiceImpl(BuyGoodsMapper buyGoodsMapper) {
		this.buyGoodsMapper = buyGoodsMapper;
	}

	@Override
	public int buyGoods(List<CartDTO> listCartDTO) {
		return buyGoodsMapper.buyGoods(listCartDTO);
	}

}
