package tesa.official.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tesa.official.bean.Member;


@Repository
public class Admindao {
	
	@Inject
	private SqlSession session;
	
	  public List<Member> se_member(){
	      return session.selectList("tesa.admin.se_member");
	   }
}
