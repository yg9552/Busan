package com.yg.infra.modules.memberAddr;

import com.yg.infra.common.base.BaseVo;

public class MemberAddrVo extends BaseVo{
	private String shValue;
	private Integer shOption;
	private Integer shDelNy;
	private String maSeq;
	
	
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
	public String getMaSeq() {
		return maSeq;
	}
	public void setMaSeq(String maSeq) {
		this.maSeq = maSeq;
	}

	
}
