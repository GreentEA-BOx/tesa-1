package tesa.consert.service;

import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import tesa.official.bean.EmailForm;

@Component
public class EmailSender {
	
	@Autowired
	private JavaMailSender mailSender;
	
	public void sendEmail(EmailForm emailForm) throws Exception{
		//메일 발송 기능 제공
		MimeMessage msg = mailSender.createMimeMessage();
		msg.setSubject(emailForm.getSubject());
		msg.setText(emailForm.getContent());
		msg.setRecipient(RecipientType.TO, new InternetAddress(emailForm.getReceiver()));
		mailSender.send(msg);
	}
}
