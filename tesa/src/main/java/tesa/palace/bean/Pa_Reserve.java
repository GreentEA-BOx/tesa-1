package tesa.palace.bean;

import oracle.sql.TIMESTAMP;

public class Pa_Reserve {
private int pa_r_code;
private int pa_s_code;
private int pa_p_code;
private TIMESTAMP pa_r_register;
private int pa_r_fee;
private TIMESTAMP pa_r_date;
private TIMESTAMP pa_r_time;
private String pa_r_cancel;
private int m_code;

public int getPa_r_code() {
	return pa_r_code;
}
public void setPa_r_code(int pa_r_code) {
	this.pa_r_code = pa_r_code;
}
public int getPa_s_code() {
	return pa_s_code;
}
public void setPa_s_code(int pa_s_code) {
	this.pa_s_code = pa_s_code;
}
public int getPa_p_code() {
	return pa_p_code;
}
public void setPa_p_code(int pa_p_code) {
	this.pa_p_code = pa_p_code;
}
public TIMESTAMP getPa_r_register() {
	return pa_r_register;
}
public void setPa_r_register(TIMESTAMP pa_r_register) {
	this.pa_r_register = pa_r_register;
}
public int getPa_r_fee() {
	return pa_r_fee;
}
public void setPa_r_fee(int pa_r_fee) {
	this.pa_r_fee = pa_r_fee;
}
public TIMESTAMP getPa_r_date() {
	return pa_r_date;
}
public void setPa_r_date(TIMESTAMP pa_r_date) {
	this.pa_r_date = pa_r_date;
}
public TIMESTAMP getPa_r_time() {
	return pa_r_time;
}
public void setPa_r_time(TIMESTAMP pa_r_time) {
	this.pa_r_time = pa_r_time;
}
public String getPa_r_cancel() {
	return pa_r_cancel;
}
public void setPa_r_cancel(String pa_r_cancel) {
	this.pa_r_cancel = pa_r_cancel;
}
public int getM_code() {
	return m_code;
}
public void setM_code(int m_code) {
	this.m_code = m_code;
}

public Pa_Reserve(int pa_r_code, int pa_s_code, int pa_p_code, TIMESTAMP pa_r_register, int pa_r_fee,
		TIMESTAMP pa_r_date, TIMESTAMP pa_r_time, String pa_r_cancel, int m_code) {
	super();
	this.pa_r_code = pa_r_code;
	this.pa_s_code = pa_s_code;
	this.pa_p_code = pa_p_code;
	this.pa_r_register = pa_r_register;
	this.pa_r_fee = pa_r_fee;
	this.pa_r_date = pa_r_date;
	this.pa_r_time = pa_r_time;
	this.pa_r_cancel = pa_r_cancel;
	this.m_code = m_code;
}

}
