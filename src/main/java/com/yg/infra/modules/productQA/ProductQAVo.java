package com.yg.infra.modules.productQA;

import com.yg.infra.common.base.BaseVo;

public class ProductQAVo extends BaseVo{
	private String shValue;
	private Integer shOption;
	private Integer shDelNy;
	private String productSeq;
	private String memberSeq;
	private String qaSeq;
	
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public Integer getShDelNy() {
		return shDelNy;
	}
	public void setShDelNy(Integer shDelNy) {
		this.shDelNy = shDelNy;
	}
	public String getProductSeq() {
		return productSeq;
	}
	public void setProductSeq(String productSeq) {
		this.productSeq = productSeq;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getQaSeq() {
		return qaSeq;
	}
	public void setQaSeq(String qaSeq) {
		this.qaSeq = qaSeq;
	}
	
}
