package com.yg.infra.modules.productReview;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductReviewServiceImpl implements ProductReviewService{

	@Autowired
	ProductReviewDao dao;

	@Override
	public List<ProductReview> selectList(ProductReviewVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public ProductReview selectOne(ProductReviewVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int selectOneCount(ProductReviewVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public int insert(ProductReview dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	
	
}
