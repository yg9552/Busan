package com.yg.infra.modules.code;

import java.util.List;

public interface CodeService {

	public List<Code> selectlist(CodeVo vo) throws Exception;
	public Code selectOne(CodeVo vo) throws Exception;
	public int selectOneCount(CodeVo vo) throws Exception;
	public int insert(Code dto) throws Exception;
}
