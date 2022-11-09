package com.yg.infra.modules.member;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import com.yg.infra.common.base.Base;

public class Member extends Base{

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
	private Timestamp memberRegDate;
	private Integer memberGender;
	private String phonenum;
	private String token;
	
	//address
	private String maSeq;
	private Integer div_addr;
	private Integer addr_defaultNy;
	private String addr;
	private String addr_detail;
	private String zip;
	private String memberAddrLat;
	private String memberAddrLng;
	
	private String[] maSeqArray;
	private Integer[] div_addrArray;
	private Integer[] addr_defaultNyArray;
	private String[] addrArray;
	private String[] addr_detailArray;
	private String[] zipArray;
	private String[] memberAddrLatArray;
	private String[] memberAddrLngArray;
	
	//Phone
	private String mtSeq;
	private String tel;
	private Integer tel_company_code;
	private Integer div_tel;
	private Integer tel_defaultNy;
    
	private String[] mtSeqArray;
	private String[] telArray;
	private Integer[] tel_company_codeArray;
	private Integer[] div_telArray;
	private Integer[] tel_defaultNyArray;
	
	//uploaded
	private MultipartFile[] uploadImgProfile;
	private Integer uploadImgProfileMaxNumber;
	private String[] uploadImgProfileDeleteSeq;
	private String[] uploadImgProfileDeletePathFile;	
	
	private MultipartFile[] uploadImg;
	private Integer uploadImgMaxNumber;
	private String[] uploadImgDeleteSeq;
	private String[] uploadImgDeletePathFile;	
	
	private MultipartFile[] uploadFile;
	private Integer uploadFileMaxNumber;
	private String[] uploadFileDeleteSeq;
	private String[] uploadFileDeletePathFile;
	
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
	public Timestamp getMemberRegDate() {
		return memberRegDate;
	}
	public void setMemberRegDate(Timestamp memberRegDate) {
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
	public MultipartFile[] getUploadImgProfile() {
		return uploadImgProfile;
	}
	public void setUploadImgProfile(MultipartFile[] uploadImgProfile) {
		this.uploadImgProfile = uploadImgProfile;
	}
	public Integer getUploadImgProfileMaxNumber() {
		return uploadImgProfileMaxNumber;
	}
	public void setUploadImgProfileMaxNumber(Integer uploadImgProfileMaxNumber) {
		this.uploadImgProfileMaxNumber = uploadImgProfileMaxNumber;
	}
	public String[] getUploadImgProfileDeleteSeq() {
		return uploadImgProfileDeleteSeq;
	}
	public void setUploadImgProfileDeleteSeq(String[] uploadImgProfileDeleteSeq) {
		this.uploadImgProfileDeleteSeq = uploadImgProfileDeleteSeq;
	}
	public String[] getUploadImgProfileDeletePathFile() {
		return uploadImgProfileDeletePathFile;
	}
	public void setUploadImgProfileDeletePathFile(String[] uploadImgProfileDeletePathFile) {
		this.uploadImgProfileDeletePathFile = uploadImgProfileDeletePathFile;
	}
	public MultipartFile[] getUploadImg() {
		return uploadImg;
	}
	public void setUploadImg(MultipartFile[] uploadImg) {
		this.uploadImg = uploadImg;
	}
	public Integer getUploadImgMaxNumber() {
		return uploadImgMaxNumber;
	}
	public void setUploadImgMaxNumber(Integer uploadImgMaxNumber) {
		this.uploadImgMaxNumber = uploadImgMaxNumber;
	}
	public String[] getUploadImgDeleteSeq() {
		return uploadImgDeleteSeq;
	}
	public void setUploadImgDeleteSeq(String[] uploadImgDeleteSeq) {
		this.uploadImgDeleteSeq = uploadImgDeleteSeq;
	}
	public String[] getUploadImgDeletePathFile() {
		return uploadImgDeletePathFile;
	}
	public void setUploadImgDeletePathFile(String[] uploadImgDeletePathFile) {
		this.uploadImgDeletePathFile = uploadImgDeletePathFile;
	}
	public MultipartFile[] getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile[] uploadFile) {
		this.uploadFile = uploadFile;
	}
	public Integer getUploadFileMaxNumber() {
		return uploadFileMaxNumber;
	}
	public void setUploadFileMaxNumber(Integer uploadFileMaxNumber) {
		this.uploadFileMaxNumber = uploadFileMaxNumber;
	}
	public String[] getUploadFileDeleteSeq() {
		return uploadFileDeleteSeq;
	}
	public void setUploadFileDeleteSeq(String[] uploadFileDeleteSeq) {
		this.uploadFileDeleteSeq = uploadFileDeleteSeq;
	}
	public String[] getUploadFileDeletePathFile() {
		return uploadFileDeletePathFile;
	}
	public void setUploadFileDeletePathFile(String[] uploadFileDeletePathFile) {
		this.uploadFileDeletePathFile = uploadFileDeletePathFile;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public String getMaSeq() {
		return maSeq;
	}
	public void setMaSeq(String maSeq) {
		this.maSeq = maSeq;
	}
	public Integer getDiv_addr() {
		return div_addr;
	}
	public void setDiv_addr(Integer div_addr) {
		this.div_addr = div_addr;
	}
	public Integer getAddr_defaultNy() {
		return addr_defaultNy;
	}
	public void setAddr_defaultNy(Integer addr_defaultNy) {
		this.addr_defaultNy = addr_defaultNy;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getAddr_detail() {
		return addr_detail;
	}
	public void setAddr_detail(String addr_detail) {
		this.addr_detail = addr_detail;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getMemberAddrLat() {
		return memberAddrLat;
	}
	public void setMemberAddrLat(String memberAddrLat) {
		this.memberAddrLat = memberAddrLat;
	}
	public String getMemberAddrLng() {
		return memberAddrLng;
	}
	public void setMemberAddrLng(String memberAddrLng) {
		this.memberAddrLng = memberAddrLng;
	}
	public String getMtSeq() {
		return mtSeq;
	}
	public void setMtSeq(String mtSeq) {
		this.mtSeq = mtSeq;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Integer getTel_company_code() {
		return tel_company_code;
	}
	public void setTel_company_code(Integer tel_company_code) {
		this.tel_company_code = tel_company_code;
	}
	public Integer getDiv_tel() {
		return div_tel;
	}
	public void setDiv_tel(Integer div_tel) {
		this.div_tel = div_tel;
	}
	public Integer getTel_defaultNy() {
		return tel_defaultNy;
	}
	public void setTel_defaultNy(Integer tel_defaultNy) {
		this.tel_defaultNy = tel_defaultNy;
	}
	public String[] getMaSeqArray() {
		return maSeqArray;
	}
	public void setMaSeqArray(String[] maSeqArray) {
		this.maSeqArray = maSeqArray;
	}
	public Integer[] getDiv_addrArray() {
		return div_addrArray;
	}
	public void setDiv_addrArray(Integer[] div_addrArray) {
		this.div_addrArray = div_addrArray;
	}
	public Integer[] getAddr_defaultNyArray() {
		return addr_defaultNyArray;
	}
	public void setAddr_defaultNyArray(Integer[] addr_defaultNyArray) {
		this.addr_defaultNyArray = addr_defaultNyArray;
	}
	public String[] getAddrArray() {
		return addrArray;
	}
	public void setAddrArray(String[] addrArray) {
		this.addrArray = addrArray;
	}
	public String[] getAddr_detailArray() {
		return addr_detailArray;
	}
	public void setAddr_detailArray(String[] addr_detailArray) {
		this.addr_detailArray = addr_detailArray;
	}
	public String[] getZipArray() {
		return zipArray;
	}
	public void setZipArray(String[] zipArray) {
		this.zipArray = zipArray;
	}
	public String[] getMemberAddrLatArray() {
		return memberAddrLatArray;
	}
	public void setMemberAddrLatArray(String[] memberAddrLatArray) {
		this.memberAddrLatArray = memberAddrLatArray;
	}
	public String[] getMemberAddrLngArray() {
		return memberAddrLngArray;
	}
	public void setMemberAddrLngArray(String[] memberAddrLngArray) {
		this.memberAddrLngArray = memberAddrLngArray;
	}
	public String[] getMtSeqArray() {
		return mtSeqArray;
	}
	public void setMtSeqArray(String[] mtSeqArray) {
		this.mtSeqArray = mtSeqArray;
	}
	public String[] getTelArray() {
		return telArray;
	}
	public void setTelArray(String[] telArray) {
		this.telArray = telArray;
	}
	public Integer[] getTel_company_codeArray() {
		return tel_company_codeArray;
	}
	public void setTel_company_codeArray(Integer[] tel_company_codeArray) {
		this.tel_company_codeArray = tel_company_codeArray;
	}
	public Integer[] getDiv_telArray() {
		return div_telArray;
	}
	public void setDiv_telArray(Integer[] div_telArray) {
		this.div_telArray = div_telArray;
	}
	public Integer[] getTel_defaultNyArray() {
		return tel_defaultNyArray;
	}
	public void setTel_defaultNyArray(Integer[] tel_defaultNyArray) {
		this.tel_defaultNyArray = tel_defaultNyArray;
	}
	
	
}
