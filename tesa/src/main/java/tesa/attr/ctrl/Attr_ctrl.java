package tesa.attr.ctrl;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tesa.attr.bean.Attr_d_sel_v;
import tesa.attr.service.Attr_service;

@Controller
public class Attr_ctrl {
	@Inject
	private Attr_service service;
	
	@RequestMapping(value="/attr_list", method = RequestMethod.GET)
	public String attr_list(Model m) {
		m.addAttribute("attrlist", service.attr_sel());
		return "view/attrection";
	}

	@RequestMapping(value="/attr_d_list", method = RequestMethod.GET)
	public String attr_d_list(Model m, HttpServletRequest r, Attr_d_sel_v d) {
		d.setAt_attr_code(r.getParameter("code"));
		System.out.println("컨트롤1" + r.getParameter("code"));
		System.out.println("컨트롤" + d.getAt_attr_code());
		m.addAttribute("attrdlist", service.attr_d_sel(d.getAt_attr_code()));
		return "view/attr_deteil";
	} 
}
