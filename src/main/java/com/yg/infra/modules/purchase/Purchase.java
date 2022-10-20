package com.yg.infra.modules.purchase;

public class Purchase {

	private String purchaseSeq;
	private String memberSeq;
	private String productSeq;
	private String maSeq;
	private String mcSeq;
	private Integer paytype;
	private Integer quantity;
	
	//member
	private String nm;
	private String id;
	
	//product
	private String product_name;
	private String price;
	
	public String getPurchaseSeq() {
		return purchaseSeq;
	}
	public void setPurchaseSeq(String purchaseSeq) {
		this.purchaseSeq = purchaseSeq;
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
	
	public String getMaSeq() {
		return maSeq;
	}
	public void setMaSeq(String maSeq) {
		this.maSeq = maSeq;
	}
	public String getMcSeq() {
		return mcSeq;
	}
	public void setMcSeq(String mcSeq) {
		this.mcSeq = mcSeq;
	}
	public Integer getPaytype() {
		return paytype;
	}
	public void setPaytype(Integer paytype) {
		this.paytype = paytype;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public String getNm() {
		return nm;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	
}
