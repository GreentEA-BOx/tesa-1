package tesa.res.ctrl;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import tesa.res.bean.Restaurant;
import tesa.res.service.RestaurantService;

@Controller
public class R_MainController {
	@Inject
	private RestaurantService service;
	
	@RequestMapping(value="/dn_res_list", method =RequestMethod.GET)
	public String selResList(Model m) {
		m.addAttribute("list",service.doService());	
		return "view/d_dining";
	}
	
	@RequestMapping(value="/res_cate1", method = RequestMethod.GET)
	public String selCate1(Model m) {
		m.addAttribute("list",service.cate1());
		return "view/d_dining";
	}
	
	@RequestMapping(value="/res_cate2", method = RequestMethod.GET)
	public String selCate2(Model m) {
		m.addAttribute("list",service.cate2());
		return "view/d_dining";
	}
	
	@RequestMapping(value="/res_cate3", method = RequestMethod.GET)
	public String selCate3(Model m) {
		m.addAttribute("list",service.cate3());
		return "view/d_dining";
	}
	
	@RequestMapping(value="/res_cate4", method = RequestMethod.GET)
	public String selCate4(Model m) {
		m.addAttribute("list",service.cate4());
		return "view/d_dining";
	}
	
	@RequestMapping(value="/res_cate5", method = RequestMethod.GET)
	public String selCate5(Model m) {
		m.addAttribute("list",service.cate5());
		return "view/d_dining";
	}
	
	@RequestMapping(value="/res_cate6", method = RequestMethod.GET)
	public String selCate6(Model m) {
		m.addAttribute("list",service.cate6());
		return "view/d_dining";
	}
	
	@RequestMapping(value="/res_cate7", method = RequestMethod.GET)
	public String selCate7(Model m) {
		m.addAttribute("list",service.cate7());
		return "view/d_dining";
	}
	
	@RequestMapping(value="/res_cate8", method = RequestMethod.GET)
	public String selCate8(Model m) {
		m.addAttribute("list",service.cate8());
		return "view/d_dining";
	}
	
	@RequestMapping(value = "/res_search", method = RequestMethod.POST)
	public String selListSear(Model m, HttpServletRequest r) {
		String search = r.getParameter("search-dining");
			m.addAttribute("list", service.selRes_search("%"+search +"%"));
			return "view/d_dining";
	}
	

}
