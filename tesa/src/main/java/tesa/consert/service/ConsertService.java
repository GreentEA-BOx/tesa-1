package tesa.consert.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import tesa.consert.dao.ConsertDao;

@Service
public class ConsertService {
	@Inject ConsertDao dao;
	
	public List<Map<String,Object>> getconsert() {
		return dao.getconsert();
	}

	public List<Map<String,Object>> getconsert(String redate) {
		return dao.getconsert(redate);
	}
	
	public Map<String,Object> getc_detail(int no) {
		return dao.getc_detail(no);
	}

}
