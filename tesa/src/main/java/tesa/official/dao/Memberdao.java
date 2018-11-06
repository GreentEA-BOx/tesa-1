package tesa.official.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tesa.official.bean.Member;


@Repository
public class Memberdao {
	
	@Inject
	private SqlSession session;
	
	public Integer login(Member member) {
		return session.selectOne("tesa.member.login", member);
	}
	public Integer idcheck(String id) {
		return session.selectOne("tesa.member.idcheck", id);
	}
	public Member insertUser(Member member) throws Exception {
		System.out.println("DAO 로그 : 회원가입 중");
		return session.selectOne("tesa.member.p_in_member", member);
	}

	public void createAuthKey(String email, String authCode) throws Exception {
		Member member = new Member();
		member.setAuthCode(authCode);
		member.setM_email(email);
		session.selectOne("tesa.member.createAuthKey", member);
	}
	public void userAuth(String email) throws Exception {
		session.update("tesa.member.userAuth", email);
	}
	public int emailcnt(Member member) {
		return session.selectOne("tesa.member.emailcnt", member);
	}
	public String idsearch(Member member) {
		return session.selectOne("tesa.member.idsearch", member);
	}
	public String pwsearch(Member member) {
		return session.selectOne("tesa.member.pwsearch", member);
	}
	public void imsipw(Member member) {
		session.update("tesa.member.imsipw",member);
	}
	public int emailcheck(String email) {
		return session.selectOne("tesa.member.emailcheck", email);
	}
	public String m_name(Member member) {
		return session.selectOne("tesa.member.m_name", member);
	}
	
}
