package com.yg.infra.modules.purchase;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class PurchaseServiceImpl implements PurchaseService{
	
	PurchaseDao dao;

	@Override
	public List<Purchase> selectList(PurchaseVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public Purchase selectOne(PurchaseVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

}
