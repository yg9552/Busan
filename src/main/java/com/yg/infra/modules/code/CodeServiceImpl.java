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
	
//	public List<Code> selectlist() throws Exception{
//		return dao.selectlist();
//	}
	
}
