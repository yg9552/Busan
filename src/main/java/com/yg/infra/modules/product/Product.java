package com.yg.infra.modules.product;

import org.springframework.web.multipart.MultipartFile;

import com.yg.infra.common.base.Base;

public class Product extends Base {

	private String productSeq;
	private String product_name;
	private Integer price;
	private Integer discount_percent;
	private Integer reserve;
	private Integer deliverycost;
	private Integer deliveryinfo;
	private Integer newNy;
	private Integer bestNy;
	private Integer option_code;
	private Integer brand_code;
	private Integer manufacturer_code;
	private Integer origin_code;
	private Integer DelNy;
	private int totalprice;
	private int discountprice;
	
	private MultipartFile[] uploadImg;
	private Integer[] uploadImgSort;
	private String[] uploadImgDeleteSeq;
	private String[] uploadImgDeletePathFile;	
	private Integer uploadImgMaxNumber;
	private MultipartFile[] uploadFile;
	private Integer[] uploadFileSort;
	private String[] uploadFileDeleteSeq;
	private String[] uploadFileDeletePathFile;
	public String getProductSeq() {
		return productSeq;
	}
	public void setProductSeq(String productSeq) {
		this.productSeq = productSeq;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	
	public Integer getDiscount_percent() {
		return discount_percent;
	}
	public void setDiscount_percent(Integer discount_percent) {
		this.discount_percent = discount_percent;
	}
	public Integer getReserve() {
		return reserve;
	}
	public void setReserve(Integer reserve) {
		this.reserve = reserve;
	}
	public Integer getDeliverycost() {
		return deliverycost;
	}
	public void setDeliverycost(Integer deliverycost) {
		this.deliverycost = deliverycost;
	}
	public Integer getDeliveryinfo() {
		return deliveryinfo;
	}
	public void setDeliveryinfo(Integer deliveryinfo) {
		this.deliveryinfo = deliveryinfo;
	}
	public Integer getNewNy() {
		return newNy;
	}
	public void setNewNy(Integer newNy) {
		this.newNy = newNy;
	}
	public Integer getBestNy() {
		return bestNy;
	}
	public void setBestNy(Integer bestNy) {
		this.bestNy = bestNy;
	}
	public Integer getOption_code() {
		return option_code;
	}
	public void setOption_code(Integer option_code) {
		this.option_code = option_code;
	}
	public Integer getBrand_code() {
		return brand_code;
	}
	public void setBrand_code(Integer brand_code) {
		this.brand_code = brand_code;
	}
	public Integer getManufacturer_code() {
		return manufacturer_code;
	}
	public void setManufacturer_code(Integer manufacturer_code) {
		this.manufacturer_code = manufacturer_code;
	}
	public Integer getOrigin_code() {
		return origin_code;
	}
	public void setOrigin_code(Integer origin_code) {
		this.origin_code = origin_code;
	}
	public Integer getDelNy() {
		return DelNy;
	}
	public void setDelNy(Integer delNy) {
		DelNy = delNy;
	}
	public int getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	public int getDiscountprice() {
		return discountprice;
	}
	public void setDiscountprice(int discountprice) {
		this.discountprice = discountprice;
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
	public MultipartFile[] getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile[] uploadFile) {
		this.uploadFile = uploadFile;
	}
	public Integer[] getUploadFileSort() {
		return uploadFileSort;
	}
	public void setUploadFileSort(Integer[] uploadFileSort) {
		this.uploadFileSort = uploadFileSort;
	}
	public String[] getUploadFileDeleteSeq() {
		return uploadFileDeleteSeq;
	}
	public void setUploadFileDeleteSeq(String[] uploadFileDeleteSeq) {
		this.uploadFileDeleteSeq = uploadFileDeleteSeq;
	}
	public String[] getUploadFileDeletePathFile() {
		return uploadFileDeletePathFile;
	}
	public void setUploadFileDeletePathFile(String[] uploadFileDeletePathFile) {
		this.uploadFileDeletePathFile = uploadFileDeletePathFile;
	}
	
	
	
	
	
	
}
