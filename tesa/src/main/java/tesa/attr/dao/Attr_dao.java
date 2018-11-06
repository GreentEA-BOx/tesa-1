package tesa.attr.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class Attr_dao {
	@Inject
	private SqlSession session;
	
	
	// select attr_v
	public List<Map<String, Object>> attr_sel() {
		return session.selectList("tesa.attraction.attr_sel_v");
	}
	
	// select attr_d_v
	public String attr_d_sel(String code) {
		System.out.println("´Ù¿À" + code);
		return session.selectOne("tesa.attraction.attr_d_sel_v", code);
	}
}
