package com.yg.infra.modules.member;

import java.util.Date;

public class Member {

	private String seq;
	private String nm;
	private String id;
	private String password;
	private String email;
	private String gender_code;
	private Date dob;
	private Integer DelNy;
	private Integer reserve;
	private Integer memberRegDate;
	private Integer memberGender;
	private String phonenum;
	
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getNm() {
		return nm;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public Integer getDelNy() {
		return DelNy;
	}
	public void setDelNy(Integer delNy) {
		DelNy = delNy;
	}
	public Integer getReserve() {
		return reserve;
	}
	public void setReserve(Integer reserve) {
		this.reserve = reserve;
	}
	public Integer getMemberRegDate() {
		return memberRegDate;
	}
	public void setMemberRegDate(Integer memberRegDate) {
		this.memberRegDate = memberRegDate;
	}
	public Integer getMemberGender() {
		return memberGender;
	}
	public void setMemberGender(Integer memberGender) {
		this.memberGender = memberGender;
	}
	public String getGender_code() {
		return gender_code;
	}
	public void setGender_code(String gender_code) {
		this.gender_code = gender_code;
	}
	
	
}
