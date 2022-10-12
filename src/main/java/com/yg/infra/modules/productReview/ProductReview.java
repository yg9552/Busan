package com.yg.infra.modules.productReview;

import java.sql.Timestamp;


public class ProductReview {
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
	
}
