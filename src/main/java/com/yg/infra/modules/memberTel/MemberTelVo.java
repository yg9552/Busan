package com.yg.infra.modules.memberTel;

import com.yg.infra.common.base.BaseVo;

public class MemberTelVo extends BaseVo{
	
	private String shValue;
	private Integer shOption;
	private Integer shDelNy;
	private String mtSeq;
	private String memberSeq;
	
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
	public String getMtSeq() {
		return mtSeq;
	}
	public void setMtSeq(String mtSeq) {
		this.mtSeq = mtSeq;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	
}
