package com.yg.infra.modules.productReview;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;


public interface ProductReviewService {
	
	public List<ProductReview> selectList(ProductReviewVo vo) throws Exception;
	public ProductReview selectOne(ProductReviewVo vo) throws Exception;
	public int selectOneCount(ProductReviewVo vo) throws Exception;
	public int insert(ProductReview dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, ProductReview dto, String tableName, int type, int maxNumber) throws Exception;
	public List<ProductReview> selectListUploaded(ProductReviewVo vo) throws Exception;
}
