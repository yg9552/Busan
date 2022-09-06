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
	
	private static String namespace = "com.yg.infra.modules.code.CodeMapper";
	
	public List<Code> selectList(CodeVo vo){
		List<Code> list = sqlSession.selectList("com.yg.infra.modules.code.CodeMapper.selectList", vo);
		return list;
	}
	
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		return result;
	}
	
}
