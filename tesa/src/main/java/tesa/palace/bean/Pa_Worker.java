package tesa.palace.bean;

public class Pa_Worker {
	
private int pa_w_code;
private int pa_j_code;
private int pa_l_code;
private String pa_w_name;
private String pa_w_tel;

public int getPa_w_code() {
	return pa_w_code;
}
public void setPa_w_code(int pa_w_code) {
	this.pa_w_code = pa_w_code;
}
public int getPa_j_code() {
	return pa_j_code;
}
public void setPa_j_code(int pa_j_code) {
	this.pa_j_code = pa_j_code;
}
public int getPa_l_code() {
	return pa_l_code;
}
public void setPa_l_code(int pa_l_code) {
	this.pa_l_code = pa_l_code;
}
public String getPa_w_name() {
	return pa_w_name;
}
public void setPa_w_name(String pa_w_name) {
	this.pa_w_name = pa_w_name;
}
public String getPa_w_tel() {
	return pa_w_tel;
}
public void setPa_w_tel(String pa_w_tel) {
	this.pa_w_tel = pa_w_tel;
}

public Pa_Worker(int pa_w_code, int pa_j_code, int pa_l_code, String pa_w_name, String pa_w_tel) {
	super();
	this.pa_w_code = pa_w_code;
	this.pa_j_code = pa_j_code;
	this.pa_l_code = pa_l_code;
	this.pa_w_name = pa_w_name;
	this.pa_w_tel = pa_w_tel;
}

public Pa_Worker() {
	super();
	
}

}
