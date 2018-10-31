package tesa.official.ctrl;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import tesa.official.bean.Member;
import tesa.official.service.MemberService;


@Controller
public class Member_controller {
	@Inject
	private MemberService service;
	
	@RequestMapping(value="/login_form", method=RequestMethod.GET)
	public String login_from() {
		return "view/login_form";
	}
/*	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(Model m, HttpServletRequest r) {
		String id = r.getParameter("id");
		String pw = r.getParameter("pw");
		System.out.println("controller"+id+pw);
		service.loadUserByUsername(id);
		return "index";
	}*/
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String index() {
		return "index";
	}
	@RequestMapping(value="/join_form", method=RequestMethod.GET)
	public String join_form() {
		return "view/join_form";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String getTest(Model m, HttpServletRequest r) {
		String id = r.getParameter("id");
		String pw = r.getParameter("pw");
		String name = r.getParameter("name");
		String email = r.getParameter("email1") + "@" + r.getParameter("email2");
		String phone = r.getParameter("phone1") + r.getParameter("phone2");
		System.out.println(id+pw+name+email+phone);
		try {
			service.doService(new Member(id,pw,name,email,phone));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "index";
	}
	

}
