package tesa.official.service;

import java.util.Random;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tesa.official.bean.Member;
import tesa.official.dao.Memberdao;

@Service
public class MemberService {

	private static final Logger logger = LoggerFactory.getLogger(MemberService.class);

	@Inject
	private Memberdao dao;

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
		dao.createAuthKey(member.getM_email(), key);
		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[TESA STUDIO 이메일 인증]");
		sendMail.setText(new StringBuffer().append("<p><img src='http://192.168.1.80:8080/tesa/images/tesa.png' alt='IMG-LOGO'><p>")
				.append("<a style='color:purple; font-size:63px; font-weight:bold; text-decoration:none;' href='http://192.168.1.80:8080/tesa/emailConfirm?email=").append(member.getM_email())
				.append("&key=").append(key).append("' target='_blenk'>이메일 인증 확인</a>").toString());
		sendMail.setFrom("tesa@studio.com", "TESA");
		sendMail.setTo(member.getM_email());
		sendMail.send();
	}
	@Transactional
	public void pwsearch(Member member) throws Exception {
	/*	String pw = dao.pwsearch(member);*/
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 10; i++) {
		    int rIndex = rnd.nextInt(3);
		    switch (rIndex) {
		    case 0:
		        temp.append((char) ((int) (rnd.nextInt(26)) + 97));
		        break;
		    case 1:
		        temp.append((char) ((int) (rnd.nextInt(26)) + 65));
		        break;
		    case 2:
		        temp.append((rnd.nextInt(10)));
		        break;
		    }
		}
		System.out.println(temp);
		String imsipw = ""+temp;
		member.setM_pw(imsipw);
		dao.imsipw(member);
		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[TESA STUDIO PASSWORD FIND]");
		sendMail.setText(new StringBuffer().append("<p><img src='http://192.168.1.80:8080/tesa/images/tesa.png' alt='IMG-LOGO'><p>")
				.append("<p style='font-size:20px; margin:10px 0 10px 30px; '>임시비밀번호 : <label style='font-weight:bold;'>" + imsipw + "</label>입니다.</p>") 
				.append("<a style='color:purple; font-size:20px; margin-left:30px; font-weight:bold; text-decoration:none;' href='http://192.168.1.80:8080/tesa/pwsearchemail?email=").append(member.getM_email())
				.append("&name=").append(member.getM_name()).append("&id=").append(member.getM_id()).append("' target='_blenk'>비밀번호 변경을 원하시면 여기를 누르세요</a>").toString());
		sendMail.setFrom("tesa@studio.com", "TESA");
		sendMail.setTo(member.getM_email());
		sendMail.send();
	}
	

	public void userAuth(String Email) throws Exception {
		dao.userAuth(Email);
	}

	public int emailcnt(Member member) {
		return dao.emailcnt(member);
	}
	public String idsearch(Member member) {
		return dao.idsearch(member);
	}

	public void imsipw(Member member) {
		dao.imsipw(member);
	}

	public int emailcheck(String email) {
		return dao.emailcheck(email);
	}
}
