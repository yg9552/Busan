package com.yg.infra.modules.member;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

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
	public int updatePw(Member dto) throws Exception {
		// TODO Auto-generated method stub
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		return dao.updatePw(dto);
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
		
	//id find
	@Override
	public Member selectFindId(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectFindId(dto);
	}
	
	@Override
	public Member selectFindPw(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectFindPw(dto);
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
	
	//cache
	@PostConstruct
	public void selectListCachedMemberArrayList() throws Exception {
		List<Member> memberListFromDb = (ArrayList<Member>) dao.selectListCachedMemberArrayList();
		Member.cachedMemberArrayList.clear(); 
		Member.cachedMemberArrayList.addAll(memberListFromDb);
		System.out.println("cachedMemberArrayList: " + Member.cachedMemberArrayList.size() + " chached !");
	}
	
	public static List<Member> selectListCachedMember(String seq) throws Exception {
		List<Member> rt = new ArrayList<Member>();
		for(Member memberRow : Member.cachedMemberArrayList) {
			if (memberRow.getMemberSeq().equals(seq)) {
				rt.add(memberRow);
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	public static String selectOneCachedMember(int member) throws Exception {
		String rt = "";
		for(Member memberRow : Member.cachedMemberArrayList) {
			if (memberRow.getMemberSeq().equals(Integer.toString(member))) {
				rt = memberRow.getNm();
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	public static void clear() throws Exception {
		Member.cachedMemberArrayList.clear();
	}
	
	
	
}
