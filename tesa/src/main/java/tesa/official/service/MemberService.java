package tesa.official.service;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tesa.official.bean.Member;
import tesa.official.dao.Member_dao;

@Service
public class MemberService {

	private static final Logger logger = LoggerFactory.getLogger(MemberService.class);

	@Inject
	private Member_dao dao;

	/*
	 * public void doService(Member member){ dao.insertUser(member); }
	 */
	public Integer login(Member member) {
		return dao.login(member);
	}

	public Integer idcheck(String id) {
		return dao.idcheck(id);
	}

	@Inject
	private JavaMailSender mailSender;

	@Transactional
	public void create(Member member) throws Exception {
		dao.insertUser(member);
		String key = new TempKey().getKey(50, false);
		dao.createAuthKey(member.getEmail(), key);
		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[TESA STUDIO 이메일 인증]");
		sendMail.setText(new StringBuffer().append("<h1>메일인증</h1>")
				.append("<a href='http://192.168.1.80:8080/tesa/emailConfirm?email=").append(member.getEmail())
				.append("&key=").append(key).append("' target='_blenk'>이메일 인증 확인</a>").toString());
		sendMail.setFrom("tesa@studio.com", "TESA");
		System.out.println("memberservice member.getEmail() >" + member.getEmail());
		sendMail.setTo(member.getEmail());
		sendMail.send();
	}

	public void userAuth(String Email) throws Exception {
		dao.userAuth(Email);
	}

	public int emailcnt(Member member) {
		return dao.emailcnt(member);
	}
}
