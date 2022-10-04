package com.yg.infra.modules.memberCard;

import com.yg.infra.common.base.BaseVo;

public class MemberCardVo extends BaseVo{

	private String shValue;
	private Integer shOption;
	private Integer shDelNy;
	private String mcSeq;
	
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
	public String getMcSeq() {
		return mcSeq;
	}
	public void setMcSeq(String mcSeq) {
		this.mcSeq = mcSeq;
	}
	
	
	
}
