package tesa.official.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import tesa.official.bean.Member;
import tesa.official.dao.Member_dao;

@Service
public class Member_service {

	@Inject
	private Member_dao dao;
	
	public void doService(Member m) {
		dao.doP_in_member(m);
	}
}
