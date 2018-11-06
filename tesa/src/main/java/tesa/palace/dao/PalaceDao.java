package tesa.palace.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class PalaceDao {
	@Inject
	private SqlSession session;
	
public List<Map<String, Object>> sel_worker(){
	return session.selectList("tesa.palace.sel_worker");
}

public List<Map<String, Object>> sel_reserv(){
	return session.selectList("tesa.palace.sel_reserv");
}
}
