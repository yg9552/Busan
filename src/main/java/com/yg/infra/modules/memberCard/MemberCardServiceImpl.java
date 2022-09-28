package com.yg.infra.modules.memberCard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberCardServiceImpl implements MemberCardService {

	@Autowired
	MemberCardDao dao;
	
	@Override
	public List<MemberCard> selectList(MemberCardVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public MemberCard selectOne(MemberCardVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int insert(MemberCard dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int update(MemberCard dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int uelete(MemberCard dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}

	@Override
	public int delete(MemberCardVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.delete(vo);
	}

	@Override
	public int selectOneCount(MemberCardVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}
}
