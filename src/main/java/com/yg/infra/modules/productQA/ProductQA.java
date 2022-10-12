package com.yg.infra.modules.productQA;

import java.sql.Timestamp;

public class ProductQA {
	private String qaSeq;
	private String memberSeq;
	private String productSeq;
	private String title;
	private String question;
	private Timestamp qaRegtime;
	private Integer DelNy;
	private Integer answerNy;
	private String id;
	private String nm;
	private String product_name;
	public String getQaSeq() {
		return qaSeq;
	}
	public void setQaSeq(String qaSeq) {
		this.qaSeq = qaSeq;
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
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public Timestamp getQaRegtime() {
		return qaRegtime;
	}
	public void setQaRegtime(Timestamp qaRegtime) {
		this.qaRegtime = qaRegtime;
	}
	public Integer getDelNy() {
		return DelNy;
	}
	public void setDelNy(Integer delNy) {
		DelNy = delNy;
	}
	public Integer getAnswerNy() {
		return answerNy;
	}
	public void setAnswerNy(Integer answerNy) {
		this.answerNy = answerNy;
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

}
