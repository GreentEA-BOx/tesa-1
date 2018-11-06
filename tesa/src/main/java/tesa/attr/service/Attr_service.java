package tesa.attr.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import tesa.attr.dao.Attr_dao;

@Service
public class Attr_service {
	@Inject
	private Attr_dao dao;
	
	// select attr
	public List<Map<String, Object>> attr_sel() {
		return dao.attr_sel();
	}
	
	// select attr_d
	public String attr_d_sel(String code) {
		System.out.println("¼­ºñ½º" + code);
		return dao.attr_d_sel(code);
	}
}
