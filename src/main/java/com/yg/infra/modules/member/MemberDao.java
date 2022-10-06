package com.yg.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.yg.infra.modules.member.MemberMapper";
	
	public List<Member> selecList(MemberVo vo) { return sqlSession.selectList(namespace + ".selectList",vo); }
	
	public Member selectOne(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	 
	public int insert(Member dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	public int update(Member dto) { return sqlSession.update(namespace + ".update", dto); }
	public int updatePw(Member dto) {return sqlSession.update(namespace + ".updatePw",dto); }
	public int uelete(Member dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(MemberVo vo) { return sqlSession.delete(namespace + ".delete", vo); }
	
	//paging
	public int selectOneCount(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	//for cache
	public List<Member> selectListCachedMemberArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedMemberArrayList", null); }
	
	//id check
	public int selectOneIdCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneIdCheck", dto);
	}
	
	//id Pw find
	public Member selectFindId(Member dto) {
		return sqlSession.selectOne(namespace + ".selectFindId", dto);
	}
	public Member selectFindPw(Member dto) {
		return sqlSession.selectOne(namespace + ".selectFindPw", dto);
	}
	
	//login
	public Member selectOneId(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneId", dto);
	}
	public Member selectOneLogin(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}
}
