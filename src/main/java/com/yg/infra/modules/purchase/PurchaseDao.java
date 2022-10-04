package com.yg.infra.modules.purchase;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class PurchaseDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.yg.infra.modules.purchase.PurchaseMapper";
	
	public List<Purchase> selectList(PurchaseVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	public Purchase selectOne(PurchaseVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public int selectOneCount(PurchaseVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public int insert(Purchase dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}

}
