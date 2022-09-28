package com.yg.infra.modules.memberCard;

import java.util.List;

public interface MemberCardService {
	public List<MemberCard> selectList(MemberCardVo vo) throws Exception;
	public MemberCard selectOne(MemberCardVo vo) throws Exception;
	public int insert(MemberCard dto) throws Exception;
	public int update(MemberCard dto) throws Exception;
	public int uelete(MemberCard dto) throws Exception;
	public int delete(MemberCardVo vo) throws Exception;
	public int selectOneCount(MemberCardVo vo) throws Exception;
}
