package tesa.official.bean;

import java.util.Date;

public class Member {

	private String m_code;
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_tel;
	private String m_email;
	private String m_del;
	private Date m_jdate;
	private Date m_wdate;
	private String authCode;
	private int userAuth;

	public String getM_code() {
		return m_code;
	}

	public void setM_code(String m_code) {
		this.m_code = m_code;
	}

	public String getAuthCode() {
		return authCode;
	}

	public void setAuthCode(String authCode) {
		this.authCode = authCode;
	}

	public int getUserAuth() {
		return userAuth;
	}

	public void setUserAuth(int userAuth) {
		this.userAuth = userAuth;
	}

	public Member() {
		super();
	}

	public Member(String m_code, String m_id, String m_pw, String m_name, String m_tel, String m_email, Date m_jdate) {
		super();
		this.m_code = m_code;
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_tel = m_tel;
		this.m_email = m_email;
		this.m_jdate = m_jdate;
	}

	public Member(String m_id, String m_pw, String m_name, String m_tel, String m_email) {
		super();
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_tel = m_tel;
		this.m_email = m_email;
	}

	public Member(String m_name, String m_email) {
		super();
		this.m_name = m_name;
		this.m_email = m_email;
	}

	public Member(String m_id, String m_name, String m_email) {
		super();
		this.m_id = m_id;
		this.m_name = m_name;
		this.m_email = m_email;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_tel() {
		return m_tel;
	}

	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_del() {
		return m_del;
	}

	public void setM_del(String m_del) {
		this.m_del = m_del;
	}

	public Date getM_jdate() {
		return m_jdate;
	}

	public void setM_jdate(Date m_jdate) {
		this.m_jdate = m_jdate;
	}

	public Date getM_wdate() {
		return m_wdate;
	}

	public void setM_wdate(Date m_wdate) {
		this.m_wdate = m_wdate;
	}

}
