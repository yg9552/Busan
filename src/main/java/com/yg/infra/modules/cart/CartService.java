package com.yg.infra.modules.cart;

import java.util.List;

public interface CartService {
	public List<Cart> selectList(CartVo vo) throws Exception;
	public Cart selectOne(CartVo vo) throws Exception;
	public int selectOneCount(CartVo vo) throws Exception;
	public int insert(Cart dto) throws Exception;

}
