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
    public Member insertUser(Member member) throws Exception {
        System.out.println("회원등록완료 !!!");
        System.out.println("//////////////////////////////////");
        System.out.println("회원등록완료 !!!");
        return session.selectOne("tesa.member.p_in_member", member);
    }

	public Member getID(String id) {
		System.out.println("MemberDao > " + id);
		return session.selectOne("tesa.member.getid", id);
	}
	public Integer login(Member member) {
		System.out.println(member.getId());
		return session.selectOne("tesa.member.login", member);
	}
}
