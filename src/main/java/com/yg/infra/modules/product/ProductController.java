package com.yg.infra.modules.product;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yg.infra.modules.code.CodeServiceImpl;
import com.yg.infra.modules.member.MemberServiceImpl;
import com.yg.infra.modules.productQA.ProductQA;
import com.yg.infra.modules.productQA.ProductQAServiceImpl;
import com.yg.infra.modules.productQA.ProductQAVo;
import com.yg.infra.modules.productReview.ProductReview;
import com.yg.infra.modules.productReview.ProductReviewServiceImpl;
import com.yg.infra.modules.productReview.ProductReviewVo;

@Controller
@RequestMapping(value = "/product/")
public class ProductController {

	@Autowired
	ProductServiceImpl service;
	
	@Autowired
	MemberServiceImpl servicem;
	@Autowired
	ProductReviewServiceImpl servicerv;
	@Autowired
	ProductQAServiceImpl serviceqa;
	
	@RequestMapping(value = "productList")
	public String productList(Model model,@ModelAttribute("vo") ProductVo vo) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Product> list = service.selectList(vo);
		model.addAttribute("list", list);
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		return "infra/product/xdmin/productList";
	}
	
	@RequestMapping(value = "productListX")
	public String productListX(Model model, @ModelAttribute("vo") ProductVo vo) throws Exception {
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Product> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/product/xdmin/productListX";
	}
	
	@RequestMapping(value = "productView")
	public String productView(Model model, @ModelAttribute("vo") ProductVo vo, @ModelAttribute("vorv") ProductReviewVo vorv, @ModelAttribute("voqa") ProductQAVo voqa) throws Exception {
		vorv.setParamsPaging(servicerv.selectOneCount(vorv));
		voqa.setParamsPaging(serviceqa.selectOneCount(voqa));
		
		vorv.setProductSeq(vo.getProductSeq());
		voqa.setProductSeq(vo.getProductSeq());
		
		Product result = service.selectOne(vo);
		model.addAttribute("item", result);
		List<ProductReview> listrv = servicerv.selectList(vorv);
		model.addAttribute("listrv", listrv);
		List<ProductQA> listqa = serviceqa.selectList(voqa);
		model.addAttribute("listqa", listqa);
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		model.addAttribute("listReviewUploaded", servicerv.selectListUploaded(vorv));
		return "infra/product/xdmin/productView";
	}

	@RequestMapping(value = "productViewX")
	public String productViewX(Model model, @ModelAttribute("vo") ProductVo vo) throws Exception {
		Product result = service.selectOne(vo);
		model.addAttribute("item", result);
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		return "infra/product/xdmin/productViewX"; 
	}
	
	@RequestMapping(value = "productForm")
	public String productForm(@ModelAttribute("vo") ProductVo vo) throws Exception {
		return "infra/product/xdmin/productForm";
	}
	
	@RequestMapping(value = "productInst")
	public String productInst(@ModelAttribute("vo") ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		
		vo.setProductSeq(dto.getProductSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/product/productViewX";
	}
	
	@RequestMapping(value = "productUpdt")
	public String productUpdt(@ModelAttribute("vo") ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/product/productViewX";
	}
	
	@RequestMapping(value = "productUele")
	public String productUele(@ModelAttribute("vo") ProductVo vo, Product dto, RedirectAttributes redirectAttributes) throws Exception {
		service.uelete(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/product/productViewX";
	}
	
	@RequestMapping(value = "productDele")
	public String productDele(ProductVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.delete(vo);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/product/productListX";
	}
	
	@RequestMapping("excelDownload")
    public void excelDownload(ProductVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Product> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("Sheet1");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting	        
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"상품번호", "상품명", "가격", "브랜드", "제조사", "원산지"};

	        row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getProductSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getProduct_name());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getPrice());
	        	
	            cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            if(list.get(i).getBrand_code() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getBrand_code()));

	            cell = row.createCell(4);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getManufacturer_code() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getManufacturer_code()));

	            cell = row.createCell(5);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getOrigin_code() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getOrigin_code()));
	            
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
}
