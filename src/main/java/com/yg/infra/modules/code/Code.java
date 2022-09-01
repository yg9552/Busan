package com.yg.infra.modules.code;

import com.yg.infra.modules.codegroup.CodeGroup;

public class Code {

	CodeGroup codeGroup;
	
	public CodeGroup getCodeGroup() {
		return codeGroup;
	}
	public void setCodeGroup(CodeGroup codeGroup) {
		this.codeGroup = codeGroup;
	}
	
	private String seq;
	private String name;
	private String cg_seq;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	
	public String getCg_seq() {
		return cg_seq;
	}
	public void setCg_seq(String cg_seq) {
		this.cg_seq = cg_seq;
	}
	
	
	
}
