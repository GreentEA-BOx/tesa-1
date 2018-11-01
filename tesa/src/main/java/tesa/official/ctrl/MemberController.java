package tesa.official.ctrl;


import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import tesa.official.bean.Member;
import tesa.official.service.MemberService;


@Controller
public class MemberController {
	@Inject
	private MemberService service;
	
	@RequestMapping(value="/login_form", method=RequestMethod.GET)
	public String login_from() {
		return "view/login_form";
	}
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(Model m, HttpServletRequest r, Member member) {
		member.setId(r.getParameter("id"));
		member.setPw(r.getParameter("pw"));
		System.out.println("controller"+member);
		int count = service.login(member);
		if(count == 0) {
			System.out.println("아이디,비밀번호 오류");
			m.addAttribute("count",count);
			return "view/login_form";
					
		}else {
			m.addAttribute(member);
			return "index";
		}
	}
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String index() {
		return "index";
	}
	@RequestMapping(value="/join_form", method=RequestMethod.GET)
	public String join_form() {
		return "view/join_form";
	}
	@RequestMapping(value="/idcheck" , method = RequestMethod.POST)
	public @ResponseBody String idcheck(HttpServletRequest r) {
		String id = r.getParameter("id");
		int cnt = service.idcheck(id);
		return String.valueOf(cnt);
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String getTest(Model m, HttpServletRequest r) {
		String id = r.getParameter("id");
		String pw = r.getParameter("pw");
		String name = r.getParameter("name");
		String email = r.getParameter("email1") + "@" + r.getParameter("email2");
		String phone = r.getParameter("phone1") + r.getParameter("phone2");
		System.out.println(id+pw+name+email+phone);
		service.doService(new Member(id,pw,name,email,phone));
		return "view/login_form";
	}
	

}
