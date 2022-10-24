package com.yg.infra.modules.cart;

public class Cart {
	private String cartSeq;
	private String memberSeq;
	private String productSeq;
	private Integer DelNy;
	private String nm;
	private String product_name;
	private String id;
	private String price;
	private Integer deliverycost;
	private Integer discount_percent;
	
	public String getCartSeq() {
		return cartSeq;
	}
	public void setCartSeq(String cartSeq) {
		this.cartSeq = cartSeq;
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
	public Integer getDelNy() {
		return DelNy;
	}
	public void setDelNy(Integer delNy) {
		DelNy = delNy;
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Integer getDeliverycost() {
		return deliverycost;
	}
	public void setDeliverycost(Integer deliverycost) {
		this.deliverycost = deliverycost;
	}
	public Integer getDiscount_percent() {
		return discount_percent;
	}
	public void setDiscount_percent(Integer discount_percent) {
		this.discount_percent = discount_percent;
	}
	
}
