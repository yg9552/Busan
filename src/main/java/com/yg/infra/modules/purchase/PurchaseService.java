package com.yg.infra.modules.purchase;

import java.util.List;

public interface PurchaseService {
	public List<Purchase> selectList(PurchaseVo vo) throws Exception;
	public Purchase selectOne(PurchaseVo vo) throws Exception;
	public int selectOneCount(PurchaseVo vo) throws Exception;
	public int insert(Purchase dto) throws Exception;

}
