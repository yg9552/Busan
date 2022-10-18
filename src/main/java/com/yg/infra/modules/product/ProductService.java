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
}
