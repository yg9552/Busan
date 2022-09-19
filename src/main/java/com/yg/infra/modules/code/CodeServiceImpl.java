package com.yg.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {
	
	@Autowired
	CodeDao dao;

	@Override
	public List<Code> selectlist(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		List<Code> list = dao.selectList(vo);
		return list;
	}

	@Override
	public int insert(Code dto) throws Exception {

		int result = dao.insert(dto);
		return result;
	}

	@Override
	public Code selectOne(CodeVo vo) throws Exception {
		Code result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}

	@Override
	public int selectOneCount(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public int update(Code dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int uelete(Code dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}

	@Override
	public int delete(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.delete(vo);
	}
	
	

	
	
	
	
}
