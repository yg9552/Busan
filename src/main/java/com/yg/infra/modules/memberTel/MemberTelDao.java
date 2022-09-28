package com.yg.infra.modules.memberTel;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberTelDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.yg.infra.modules.memberTel.MemberTelMapper";
	
	public List<MemberTel> selectList(MemberTelVo vo){
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	public MemberTel selectOne(MemberTelVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public int insert(MemberTel dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	
	public int update(MemberTel dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int uelete(MemberTel dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(MemberTelVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}

	public int selectOneCount(MemberTelVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
}
