package tesa.official.service;


import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import tesa.official.bean.Member;
import tesa.official.dao.Member_dao;

@Service
public class MemberService {
	
		private static final Logger logger = LoggerFactory.getLogger(MemberService.class); 

	@Inject
	private Member_dao dao;


	public void doService(Member member){
		dao.insertUser(member);
	}
	public Integer login(Member member){
		return dao.login(member);
	}
	public Integer idcheck(String id){
		return dao.idcheck(id);
	}
	
}
