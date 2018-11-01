package tesa.official.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tesa.official.bean.Member;


@Repository
public class Member_dao {
	
	@Inject
	private SqlSession session;
	
	//회원 정보 입력
   /* public Member insertUser(Member member) {
        System.out.println("회원등록완료 !!!");
        return session.selectOne("tesa.member.p_in_member", member);
    }*/
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
		System.out.println("user_authCode>" + authCode);
		member.setAuthCode(authCode);
		member.setEmail(email);
		session.selectOne("tesa.member.createAuthKey", member);
	}
	public void userAuth(String email) throws Exception {
		session.update("tesa.member.userAuth", email);
	}
	public int emailcnt(Member member) {
		return session.selectOne("tesa.member.emailcnt", member);
	}
}
