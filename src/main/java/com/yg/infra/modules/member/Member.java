package com.yg.infra.modules.member;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class Member {

	private String memberSeq;
	private String nm;
	private String id;
	private String password;
	private String email;
	private String gender_code;
	private String email_code;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dob;
	private Integer DelNy;
	private Integer reserve;
	private Integer memberRegDate;
	private Integer memberGender;
	private String phonenum;
	
//	for cache
	public static List<Member> cachedMemberArrayList = new ArrayList<Member>();
	
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
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
	public String getEmail_code() {
		return email_code;
	}
	public void setEmail_code(String email_code) {
		this.email_code = email_code;
	}
	public static List<Member> getCachedMemberArrayList() {
		return cachedMemberArrayList;
	}
	public static void setCachedMemberArrayList(List<Member> cachedMemberArrayList) {
		Member.cachedMemberArrayList = cachedMemberArrayList;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	
	
}
