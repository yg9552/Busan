package com.yg.infra.modules.memberAddr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MemberAddrServiceImpl implements MemberAddrService{

	@Autowired
	MemberAddrDao dao;

	@Override
	public List<MemberAddr> selectList(MemberAddrVo vo) throws Exception {
		// TODO Auto-generated method stub
		List <MemberAddr> list = dao.selectList(vo);
		return list;
	}

	@Override
	public MemberAddr selectOne(MemberAddrVo vo) throws Exception {
		// TODO Auto-generated method stub
		MemberAddr result = dao.selectOne(vo);
		return result;
	}

	@Override
	public int selectOneCount(MemberAddrVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public int insert(MemberAddr dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int update(MemberAddr dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int uelete(MemberAddr dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}

	@Override
	public int delete(MemberAddrVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.delete(vo);
	}
	
	


	
	
}
