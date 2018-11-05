package tesa.consert.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ConsertDao {
	@Inject
	private SqlSession session;
	public List<Map<String,Object>> getconsert() {
		return session.selectList("tesa.consert.getconsert");
	}
	public Map<String, Object> getc_detail(int no) {
		return session.selectOne("tesa.consert.getc_detail", no);
	}
	public List<Map<String, Object>> getconsert(String redate) {
		return session.selectList("tesa.consert.getconsertno",redate);
	}
}
