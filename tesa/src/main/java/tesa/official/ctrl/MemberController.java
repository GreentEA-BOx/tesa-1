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
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(Model m, HttpServletRequest r, Member member) {
		member.setId(r.getParameter("id"));
		member.setPw(r.getParameter("pw"));
		int count = service.login(member);
		if(count == 0) {
			m.addAttribute("count",count);
			return "view/login_form";
					
		}else {
			int emailcnt = service.emailcnt(member);
			System.out.println("emailcnt>>" + emailcnt);
			if(emailcnt == 0) {
				m.addAttribute("emailcnt",emailcnt);
				System.out.println("이메일 인증후 로그인 해주세요");
				return "view/login_form";
			}else {
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
		String phone = r.getParameter("phone1") + r.getParameter("phone2");
		System.out.println(id+pw+name+email+phone);
		try {
			service.create(new Member(id,pw,name,phone,email));
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
	

}
