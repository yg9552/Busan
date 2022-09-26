package com.yg.infra.modules.product;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.yg.infra.modules.product.ProductMapper";
	
	public List<Product> selectList(ProductVo vo){
		List<Product> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
	
	public Product selectOne(ProductVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public int insert(Product dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	
	public int update(Product dto) {
		return sqlSession.insert(namespace + ".update", dto);
	}
	
	public int uelete(Product dto) {
		return sqlSession.insert(namespace + ".uelete", dto);
	}
	
	public int delete(ProductVo vo) {
		return sqlSession.insert(namespace + ".delete", vo);
	}
	
	//paging
	public int selectOneCount(ProductVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
}
