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
import tesa.official.service.MemberService;


@Controller
public class MemberController {
	@Inject
	private MemberService service;
	
	@RequestMapping(value="/login_form", method=RequestMethod.GET)
	public String login_from() {
		return "view/login_form";
	}
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(HttpSession session,Model m, HttpServletRequest r, Member member) {
		System.out.println(session.getId());
		member.setM_id(r.getParameter("id"));
		member.setM_pw(r.getParameter("pw"));
		int count = service.login(member);
		if(count == 0) {
			m.addAttribute("count",count);
			return "view/login_form";
		}else {
			int emailcnt = service.emailcnt(member);
			if(emailcnt == 0) {
				m.addAttribute("emailcnt",emailcnt);
				return "view/login_form";
			}else {
				String name = service.m_name(member);
				member.setM_name(name);
				/*session.setAttribute("member", new Member().setM_id(r.getParameter("name")));*/
			/*	session.setAttribute("name", member.getM_name());*/
				m.addAttribute(emailcnt);
				return "index";
			}
			
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
		String tel = r.getParameter("phone1") + r.getParameter("phone2");
		System.out.println(id+pw+name+email+tel);
		try {
			service.create(new Member(id,pw,name,tel,email));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "view/login_form";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String RegisterPost(Member member, Model model, RedirectAttributes rttr, HttpServletRequest request, HttpSession session) throws Exception {
		service.create(member);
		rttr.addFlashAttribute("authmsg" , "가입시 사용한 이메일로 인증해주 3");
		return "redirect:/";
	}
	@RequestMapping(value = "/emailConfirm", method = RequestMethod.GET)
	public String emailConfirm(String email, Model model) throws Exception {
		service.userAuth(email);
		model.addAttribute("email", email);
		return "view/emailsucc";
	}
	@RequestMapping(value="/pwsearchemail", method=RequestMethod.GET)
	public String pwsearchemail(String id, String email, String name, Model m) {
		m.addAttribute("id",id);
		m.addAttribute("email",email);
		m.addAttribute("name",name);
		return "view/pwupdate";
	}
	@RequestMapping(value="/pwup", method=RequestMethod.POST)
	public String pwup(Member member, Model m, HttpServletRequest r) {
		service.imsipw(member);
		return "view/login_form";
	}
	@RequestMapping(value="/idsearch", method=RequestMethod.GET)
	public String idsearch() {
		return "view/idsearch";
	}
	
	@RequestMapping(value="/idsearch", method=RequestMethod.POST)
	public String idsearch(Model m, HttpServletRequest r) {
		String name = r.getParameter("searchname");
		String email = r.getParameter("email1") + "@" + r.getParameter("email2");
		String idc = service.idsearch(new Member(name,email));
		m.addAttribute("idc",idc);
		return "view/idsearch";
	}
	@RequestMapping(value="/pwsearch", method=RequestMethod.GET)
	public String pwsearch() {
		return "view/pwsearch";
	}
	@RequestMapping(value="/pwsearch", method=RequestMethod.POST)
	public String pwsearch(Model m, HttpServletRequest r) {
		System.out.println("pwsearch탐");
		String id = r.getParameter("searchid");
		String name = r.getParameter("searchname");
		String email = r.getParameter("email1") + "@" + r.getParameter("email2");
		System.out.println("pwsearch name email>" +id + name + email);
		try {
			service.pwsearch(new Member(id,name,email));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "view/pwsearch";
	}
	
	@RequestMapping(value="/emailcheck" , method = RequestMethod.POST)
	public @ResponseBody String emailcheck(HttpServletRequest r) {
		String email = r.getParameter("email");
		int cnt = service.emailcheck(email);
		return String.valueOf(cnt);
	}
	
	
	
}
