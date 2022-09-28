package com.yg.infra.modules.memberCard;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberCardDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.yg.infra.modules.memberCard.MemberCardMapper";
	
	public List<MemberCard> selectList(MemberCardVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	public MemberCard selectOne(MemberCardVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public int insert(MemberCard dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	
	public int update(MemberCard dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int uelete(MemberCard dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	public int delete(MemberCardVo vo) {
		return sqlSession.delete(namespace + ".delete", vo);
	}

	public int selectOneCount(MemberCardVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
}
