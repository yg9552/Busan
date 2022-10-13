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
		
		uploadFiles(dto.getProductUploadedProfileImage(), dto, "productUploaded", 1);
    	uploadFiles(dto.getProductUploadedImage(), dto, "productUploaded", 2);
    	uploadFiles(dto.getProductUploadedFile(), dto, "productUploaded", 3);
    	
		return dao.insert(dto);
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
	public void uploadFiles(MultipartFile[] multipartFiles, Product dto, String tableName, int type) throws Exception {
		// TODO Auto-generated method stub
		int j = 0;
    	for(MultipartFile multipartFile : multipartFiles) {
    			
    		if(!multipartFile.isEmpty()) {
    		
    			String className = dto.getClass().getSimpleName().toString().toLowerCase();		
    			String fileName = multipartFile.getOriginalFilename();
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
    			  
    			multipartFile.transferTo(new File(path + uuidFileName));
    			
    			dto.setPath(pathForView);
    			dto.setOriginalName(fileName);
    			dto.setUuidName(uuidFileName);
    			dto.setExt(ext);
    			dto.setSize(multipartFile.getSize());
    			
	    		dto.setTableName(tableName);
	    		dto.setType(type);
	    		dto.setDefaultNy(j == 0 ? 1 : 0);
	    		dto.setSort(j + 1);
	    		dto.setPseq(dto.getProductSeq());

				dao.insertUploaded(dto);
				j++;
    		}
    	}
	}
	
	

	
}
