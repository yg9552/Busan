package com.yg.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yg.infra.common.util.UtilSecurity;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;

	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		return dao.selecList(vo);
	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int insert(Member dto) throws Exception {
		// TODO Auto-generated method stub
    	dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		
		return dao.insert(dto);
	}

	@Override
	public int update(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int uelete(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}

	@Override
	public int delete(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.delete(vo);
	}

	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	//id check
	@Override
	public int selectOneIdCheck(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneIdCheck(dto);
	}
	//login

	@Override
	public Member selectOneId(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneId(dto);
	}

	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneLogin(dto);
	}
	
	
	
	
}
