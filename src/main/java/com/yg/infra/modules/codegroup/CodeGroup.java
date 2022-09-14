package com.yg.infra.modules.codegroup;

public class CodeGroup{

//	codegroup
	private String seq;
	private String name;
	private Integer DelNy;
	private String CodeGroupNameEN;
	private String CodeGroupRegDate;
	private String CodeGroupModDate;
	
	
	
	
	
	public String getCodeGroupNameEN() {
		return CodeGroupNameEN;
	}
	public void setCodeGroupNameEN(String codeGroupNameEN) {
		CodeGroupNameEN = codeGroupNameEN;
	}
	
	private Integer seqCount;
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getDelNy() {
		return DelNy;
	}
	public void setDelNy(Integer delNy) {
		DelNy = delNy;
	}
	public Integer getSeqCount() {
		return seqCount;
	}
	public void setSeqCount(Integer seqCount) {
		this.seqCount = seqCount;
	}
	public String getCodeGroupRegDate() {
		return CodeGroupRegDate;
	}
	public void setCodeGroupRegDate(String codeGroupRegDate) {
		CodeGroupRegDate = codeGroupRegDate;
	}
	public String getCodeGroupModDate() {
		return CodeGroupModDate;
	}
	public void setCodeGroupModDate(String codeGroupModDate) {
		CodeGroupModDate = codeGroupModDate;
	}
	
	
	
}
