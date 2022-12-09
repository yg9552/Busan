package com.yg.infra.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	@Inject
	@Resource(name = "sqlSessionOracle")
	private SqlSession sqlSessionOracle;
	
	private static String namespace = "com.yg.infra.modules.code.CodeMapper";
	
	public List<Code> selectList(CodeVo vo){
		List<Code> list = sqlSession.selectList("com.yg.infra.modules.code.CodeMapper.selectList", vo);
		return list;
	}
	
	public Code selectOne(CodeVo vo) {
		Code result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result:" + result);
		return result;
	}
	
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		return result;
	}
	public int update(Code dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Code dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(CodeVo vo) { return sqlSession.delete(namespace + ".delete", vo); }
	
	//paging
	public int selectOneCount(CodeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
//	for cache
	public List<Code> selectListCachedCodeArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); }
}
