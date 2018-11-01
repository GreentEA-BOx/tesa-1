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
    public Member insertUser(Member member) {
        System.out.println("회원등록완료 !!!");
        return session.selectOne("tesa.member.p_in_member", member);
    }
	public Integer login(Member member) {
		return session.selectOne("tesa.member.login", member);
	}
	public Integer idcheck(String id) {
		return session.selectOne("tesa.member.idcheck", id);
	}
}
