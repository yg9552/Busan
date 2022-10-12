package com.yg.infra.modules.productReview;

import java.util.List;

public interface ProductReviewService {
	
	public List<ProductReview> selectList(ProductReviewVo vo) throws Exception;
	public ProductReview selectOne(ProductReviewVo vo) throws Exception;
	public int selectOneCount(ProductReviewVo vo) throws Exception;
	public int insert(ProductReview dto) throws Exception;

}
