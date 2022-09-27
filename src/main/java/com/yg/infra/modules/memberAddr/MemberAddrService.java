package com.yg.infra.modules.memberAddr;

import java.util.List;

public interface MemberAddrService {
	public List<MemberAddr> selectList(MemberAddrVo vo) throws Exception;
	public MemberAddr selectOne(MemberAddrVo vo) throws Exception;
	public int selectOneCount(MemberAddrVo vo) throws Exception;
	public int insert(MemberAddr dto) throws Exception;
	public int update(MemberAddr dto) throws Exception;
	public int uelete(MemberAddr dto) throws Exception;
	public int delete(MemberAddrVo vo) throws Exception;

}
