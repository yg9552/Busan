package com.yg.infra.modules.productQA;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProductQADao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	public static String namespace = "com.yg.infra.modules.productQA.ProductQAMapper";

	public List<ProductQA> selectList(ProductQAVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	public ProductQA selectOne(ProductQAVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	public int selectOneCount(ProductQAVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
}
