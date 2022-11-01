package com.yg.infra.modules.productReview;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import com.yg.infra.common.base.Base;


public class ProductReview extends Base{
	private String rvSeq;
	private String memberSeq;
	private String productSeq;
	private String title;
	private String contents;
	private Timestamp rvRegtime;
	private Integer DelNy;
	private String id;
	private String nm;
	private String product_name;
	private MultipartFile[] uploadImg;
	private Integer[] uploadImgSort;
	private String[] uploadImgDeleteSeq;
	private String[] uploadImgDeletePathFile;	
	private Integer uploadImgMaxNumber;
	
	public String getRvSeq() {
		return rvSeq;
	}
	public void setRvSeq(String rvSeq) {
		this.rvSeq = rvSeq;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getProductSeq() {
		return productSeq;
	}
	public void setProductSeq(String productSeq) {
		this.productSeq = productSeq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Integer getDelNy() {
		return DelNy;
	}
	public void setDelNy(Integer delNy) {
		DelNy = delNy;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNm() {
		return nm;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public Timestamp getRvRegtime() {
		return rvRegtime;
	}
	public void setRvRegtime(Timestamp rvRegtime) {
		this.rvRegtime = rvRegtime;
	}
	public MultipartFile[] getUploadImg() {
		return uploadImg;
	}
	public void setUploadImg(MultipartFile[] uploadImg) {
		this.uploadImg = uploadImg;
	}
	public Integer[] getUploadImgSort() {
		return uploadImgSort;
	}
	public void setUploadImgSort(Integer[] uploadImgSort) {
		this.uploadImgSort = uploadImgSort;
	}
	public String[] getUploadImgDeleteSeq() {
		return uploadImgDeleteSeq;
	}
	public void setUploadImgDeleteSeq(String[] uploadImgDeleteSeq) {
		this.uploadImgDeleteSeq = uploadImgDeleteSeq;
	}
	public String[] getUploadImgDeletePathFile() {
		return uploadImgDeletePathFile;
	}
	public void setUploadImgDeletePathFile(String[] uploadImgDeletePathFile) {
		this.uploadImgDeletePathFile = uploadImgDeletePathFile;
	}
	public Integer getUploadImgMaxNumber() {
		return uploadImgMaxNumber;
	}
	public void setUploadImgMaxNumber(Integer uploadImgMaxNumber) {
		this.uploadImgMaxNumber = uploadImgMaxNumber;
	}
	
}
