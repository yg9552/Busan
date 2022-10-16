package com.yg.infra.modules.productQA;

import java.util.List;

public interface ProductQAService {
	
	public List<ProductQA> selectList(ProductQAVo vo) throws Exception;
	public ProductQA selectOne(ProductQAVo vo) throws Exception;
	public int selectOneCount(ProductQAVo vo) throws Exception;
	public int insert(ProductQA dto) throws Exception;
	public int update(ProductQA dto) throws Exception;
	public int answer(ProductQA dto) throws Exception;
	public int delete(ProductQAVo vo) throws Exception;

}
