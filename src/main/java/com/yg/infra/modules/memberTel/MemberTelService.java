package com.yg.infra.modules.memberTel;

import java.util.List;

public interface MemberTelService {

	public List<MemberTel> selectList(MemberTelVo vo) throws Exception;
	public MemberTel selectOne(MemberTelVo vo) throws Exception;
	public int insert(MemberTel dto) throws Exception;
	public int update(MemberTel dto) throws Exception;
	public int uelete(MemberTel dto) throws Exception;
	public int delete(MemberTelVo vo) throws Exception;
	public int selectOneCount(MemberTelVo vo) throws Exception;
}
