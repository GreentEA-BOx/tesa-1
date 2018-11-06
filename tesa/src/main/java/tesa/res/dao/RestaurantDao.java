package tesa.res.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import tesa.res.bean.Restaurant;

@Repository
public class RestaurantDao {
	@Inject
	private SqlSession session;
	
	public List<Restaurant> sel_dn_res() {
		return session.selectList("tesa.restaurant.selDn_res");
	}
	
	public List<Restaurant> sel_dn_res_cate1() {
		return session.selectList("tesa.restaurant.selDn_res_cate1");
	}
	
	public List<Restaurant> sel_dn_res_cate2() {
		return session.selectList("tesa.restaurant.selDn_res_cate2");
	}
	
	public List<Restaurant> sel_dn_res_cate3() {
		return session.selectList("tesa.restaurant.selDn_res_cate3");
	}
	
	public List<Restaurant> sel_dn_res_cate4() {
		return session.selectList("tesa.restaurant.selDn_res_cate4");
	}
	
	public List<Restaurant> sel_dn_res_cate5() {
		return session.selectList("tesa.restaurant.selDn_res_cate5");
	}
	
	public List<Restaurant> sel_dn_res_cate6() {
		return session.selectList("tesa.restaurant.selDn_res_cate6");
	}
	
	public List<Restaurant> sel_dn_res_cate7() {
		return session.selectList("tesa.restaurant.selDn_res_cate7");
	}
	
	public List<Restaurant> sel_dn_res_cate8() {
		return session.selectList("tesa.restaurant.selDn_res_cate8");
	}
	
	public List<Restaurant> sel_dn_res_search(String r) {
		return session.selectList("tesa.restaurant.selDn_res_search",r);
	}
	
	

}
