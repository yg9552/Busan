package com.yg.infra.modules.productReview;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.yg.infra.common.constants.Constants;
import com.yg.infra.common.util.UtilDateTime;

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
		dao.insert(dto);
		uploadFiles(dto.getUploadImg(), dto, "productReviewUploaded", 2, dto.getUploadImgMaxNumber());
		
		return 1;
	}
	
	

	@Override
	public void uploadFiles(MultipartFile[] multipartFiles, ProductReview dto, String tableName, int type,
			int maxNumber) throws Exception {
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
				dto.setPseq(dto.getRvSeq());

				dao.insertUploaded(dto);
    		}
		}
	}

	@Override
	public List<ProductReview> selectListUploaded(ProductReviewVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListUploaded(vo);
	}

	
	
}
