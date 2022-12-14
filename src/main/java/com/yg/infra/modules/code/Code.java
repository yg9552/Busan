package com.yg.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {

	
	private String seq;
	private String name;
	private Integer DelNy;
	private String cg_seq;
	private String codeSeq;
	private String codegroupname;
	private String codegroupcode;
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();

	
	public Integer getDelNy() {
		return DelNy;
	}
	public void setDelNy(Integer delNy) {
		DelNy = delNy;
	}
	public String getCodeSeq() {
		return codeSeq;
	}
	public void setCodeSeq(String codeSeq) {
		this.codeSeq = codeSeq;
	}
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
	
	public String getCodegroupname() {
		return codegroupname;
	}
	public void setCodegroupname(String codegroupname) {
		this.codegroupname = codegroupname;
	}
	public String getCodegroupcode() {
		return codegroupcode;
	}
	public void setCodegroupcode(String codegroupcode) {
		this.codegroupcode = codegroupcode;
	}
	
	
	
}
