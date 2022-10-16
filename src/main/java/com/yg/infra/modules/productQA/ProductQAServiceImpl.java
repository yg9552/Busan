package com.yg.infra.modules.productQA;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductQAServiceImpl implements ProductQAService{
	
	@Autowired
	ProductQADao dao;

	@Override
	public List<ProductQA> selectList(ProductQAVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public ProductQA selectOne(ProductQAVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int selectOneCount(ProductQAVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public int insert(ProductQA dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int update(ProductQA dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int answer(ProductQA dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.answer(dto);
	}

	@Override
	public int delete(ProductQAVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.delete(vo);
	}

	
}
