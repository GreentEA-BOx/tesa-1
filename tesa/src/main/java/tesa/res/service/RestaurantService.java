package tesa.res.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import tesa.res.bean.Restaurant;
import tesa.res.dao.RestaurantDao;

@Service
public class RestaurantService {
	@Inject
	private RestaurantDao dao;
	
	
	public List<Restaurant> doService() {
		return dao.sel_dn_res();
	}

	public List<Restaurant> cate1() {
		return dao.sel_dn_res_cate1();
	}
	
	public List<Restaurant> cate2() {
		return dao.sel_dn_res_cate2();
	}
	
	public List<Restaurant> cate3() {
		return dao.sel_dn_res_cate3();
	}
	
	public List<Restaurant> cate4() {
		return dao.sel_dn_res_cate4();
	}
	
	public List<Restaurant> cate5() {
		return dao.sel_dn_res_cate5();
	}
	
	public List<Restaurant> cate6() {
		return dao.sel_dn_res_cate6();
	}
	
	public List<Restaurant> cate7() {
		return dao.sel_dn_res_cate7();
	}
	
	public List<Restaurant> cate8() {
		return dao.sel_dn_res_cate8();
	}
	
	public List<Restaurant> selRes_search(String r) {
		return dao.sel_dn_res_search(r);
	}
	
	
}
