package tesa.official.service;

import java.util.ArrayList;
import java.util.Collection;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import tesa.official.bean.Member;
import tesa.official.dao.Member_dao;

@Service
public class MemberService implements UserDetailsService {

	@Inject
	private Member_dao dao;

	public void doService(Member member) throws Exception {
		dao.insertUser(member);
	}
	public Integer login(Member member){
		return dao.login(member);
	}

	@Autowired
	Member_dao userService;

	@Override
	public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
		System.out.println("loadUserByUsername>" + id);
		Member member = userService.getID(id);
		System.out.println("servicemember"+ member);
		if (member == null) {
			System.out.println("loadUserByUsernamememberif>" + member);
			throw new UsernameNotFoundException("찾을 수 없습니다." + member.getName());
		}
		Collection<SimpleGrantedAuthority> roles = new ArrayList<SimpleGrantedAuthority>();
		roles.add(new SimpleGrantedAuthority("ROLE_USER"));
		System.out.println("roles"+roles);
		UserDetails user = new User(id, member.getPw(), roles);
		System.out.println("memberserviceuser>" + user);
		return user;
	}

}
