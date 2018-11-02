package tesa.official.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import tesa.official.bean.Member;
import tesa.official.dao.Admindao;

@Service
public class AdminService {

	@Inject
	private Admindao dao;


	public List<Member> se_member(){
		return dao.se_member();
	}
}
