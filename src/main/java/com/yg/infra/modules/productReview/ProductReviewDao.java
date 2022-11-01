package com.yg.infra.modules.productReview;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class ProductReviewDao {

	@Inject
	@Resource(name = "sqlSession")
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
	public int insert(ProductReview dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	
	//upload
	public int insertUploaded(ProductReview dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	public List<ProductReview> selectListUploaded(ProductReviewVo vo){ return sqlSession.selectList(namespace + ".selectListUploaded", vo); }
}
