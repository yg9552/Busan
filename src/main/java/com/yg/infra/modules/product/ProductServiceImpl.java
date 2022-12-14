package com.yg.infra.modules.product;

import java.io.File;
import java.util.List;
import java.util.UUID;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.yg.infra.common.constants.Constants;
import com.yg.infra.common.util.UtilDateTime;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDao dao;
	
	public void uploadFiles(MultipartFile[] multipartFiles, Product dto, String tableName, int type, int maxNumber) throws Exception {
		// TODO Auto-generated method stub
		for(int i=0; i<multipartFiles.length; i++) {
	    	
			if(!multipartFiles[i].isEmpty()) {
				
				String className = dto.getClass().getSimpleName().toString().toLowerCase();		
				String fileName = multipartFiles[i].getOriginalFilename();
				String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
				String uuid = UUID.randomUUID().toString();
				String uuidFileName = uuid + "." + ext;
				String pathModule = className;
				String nowString = UtilDateTime.nowString();
				String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
				String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
				String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
				
				File uploadPath = new File(path);
				
				if (!uploadPath.exists()) {
					uploadPath.mkdir();
				} else {
					// by pass
				}
				  
				multipartFiles[i].transferTo(new File(path + uuidFileName));
				
				dto.setPath(pathForView);
				dto.setOriginalName(fileName);
				dto.setUuidName(uuidFileName);
				dto.setExt(ext);
				dto.setSize(multipartFiles[i].getSize());
				
				dto.setTableName(tableName);
				dto.setType(type);
//				dto.setDefaultNy();
				dto.setSort(maxNumber + i);
				dto.setPseq(dto.getProductSeq());

				dao.insertUploaded(dto);
    		}
		}
	}

	@Override
	public List<Product> selectList(ProductVo vo) throws Exception {
		List<Product> list = dao.selectList(vo);
		return list;
	}

	@Override
	public Product selectOne(ProductVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int selectOneCount(ProductVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public int insert(Product dto) throws Exception {
		// TODO Auto-generated method stub
		dao.insert(dto);
		
		uploadFiles(dto.getUploadImg(), dto, "productUploaded", 2, dto.getUploadImgMaxNumber());
		uploadFiles(dto.getUploadImg2(), dto, "productUploaded", 3, dto.getUploadImg2MaxNumber());
    	
		return 1;
	}

	@Override
	public int update(Product dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int uelete(Product dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}

	@Override
	public int delete(ProductVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.delete(vo);
	}

	

	@Override
	public List<Product> selectListUploaded(ProductVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListUploaded(vo);
	}

	@Override
	public List<Product> selectListPurchase(ProductVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListPurchase(vo);
	}

	@Override
	public Product selectOnePurchase(ProductVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOnePurchase(vo);
	}

	@Override
	public int selectOneCountPurchase(ProductVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCountPurchase(vo);
	}

	@Override
	public int insertPurchase(Product dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertPurchase(dto);
	}
	
	

	
}
