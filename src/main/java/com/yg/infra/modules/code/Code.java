package com.yg.infra.modules.code;

public class Code {

	
	private String seq;
	private String name;
	private String cg_seq;
	private Integer DelNy;
	
	private String codegroupname;
	
	

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
	
	
	
	public Integer getDelNy() {
		return DelNy;
	}
	public void setDelNy(Integer delNy) {
		DelNy = delNy;
	}
	public String getCodegroupname() {
		return codegroupname;
	}
	public void setCodegroupname(String codegroupname) {
		this.codegroupname = codegroupname;
	}
	
	
	
}
