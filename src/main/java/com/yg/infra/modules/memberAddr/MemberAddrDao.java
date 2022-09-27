package com.yg.infra.modules.memberAddr;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberAddrDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.yg.infra.modules.memberAddr.MemberAddrMapper";
	
	public List<MemberAddr> selectList(MemberAddrVo vo) {
		List<MemberAddr> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
	
	public MemberAddr selectOne(MemberAddrVo vo) {
		MemberAddr result = sqlSession.selectOne(namespace + ".selectOne", vo);
		return result;
	}
	
	public int insert(MemberAddr dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	public int update(MemberAddr dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	public int uelete(MemberAddr dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	public int delete(MemberAddrVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}
	
	public int selectOneCount(MemberAddrVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
}
