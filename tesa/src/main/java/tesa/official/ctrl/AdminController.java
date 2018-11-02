package tesa.official.ctrl;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import tesa.official.bean.Member;
import tesa.official.service.AdminService;
import tesa.official.service.MemberService;


@Controller
public class AdminController {
	@Inject
	private AdminService service;
	
	
	   @RequestMapping(value="/manage", method=RequestMethod.GET)
	   public String se_member(Model m) {
	      m.addAttribute("mlist", service.se_member());
	      return "admin/member";
	   }
}
