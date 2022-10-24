package com.yg.infra.modules.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService{

	@Autowired
	CartDao dao;

	@Override
	public List<Cart> selectList(CartVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public Cart selectOne(CartVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int selectOneCount(CartVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public int insert(Cart dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int delete(CartVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.delete(vo);
	}
	
	
}
