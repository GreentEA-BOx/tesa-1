package tesa.official.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tesa.official.bean.Member;


@Repository
public class Member_dao {
	
	@Inject
	private SqlSession session;
	
	public void doP_in_member(Member m) {
		session.selectOne("tesa.member.p_in_member", m);
	}
}
