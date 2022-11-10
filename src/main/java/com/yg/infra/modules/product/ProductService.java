package com.yg.infra.modules.product;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;



public interface ProductService {

	public List<Product> selectList(ProductVo vo) throws Exception;
	public Product selectOne(ProductVo vo) throws Exception;
	public int selectOneCount(ProductVo vo) throws Exception;
	public int insert(Product dto) throws Exception;
	public int update(Product dto) throws Exception;
	public int uelete(Product dto) throws Exception;
	public int delete(ProductVo vo) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Product dto, String tableName, int type, int maxNumber) throws Exception;
	public List<Product> selectListUploaded(ProductVo vo) throws Exception;
	public List<Product> selectListPurchase(ProductVo vo) throws Exception;
	public Product selectOnePurchase(ProductVo vo) throws Exception;
	public int selectOneCountPurchase(ProductVo vo) throws Exception;
	public int insertPurchase(Product dto) throws Exception;
}
