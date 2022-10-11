package com.yg.infra.modules.productReview;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProductReviewDao {

	@Inject
	@Resource(name = "sqlSesstion")
	private SqlSession sqlSession;
	
	public static String namespace = "com.yg.infra.modules.productReview.ProductReviewMapper";
	
	public List<ProductReview> selectList(ProductReviewVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	public ProductReview selectOne(ProductReviewVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	public int selectOneCount(ProductReviewVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
}
