package com.yg.infra.modules.cart;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CartDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.yg.infra.modules.cart.cartMapper";
	
	public List<Cart> selectList(CartVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	public Cart selectOne(CartVo vo) {
		return sqlSession.selectOne(namespace + "selectOne", vo);
	}
	public int selectOneCount(CartVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	public int insert(Cart dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	
}
