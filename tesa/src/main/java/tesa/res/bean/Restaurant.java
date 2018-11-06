package tesa.res.bean;

public class Restaurant {
	private int dn_res_code;
	private int dn_c_code;
	private String dn_res_name;
	private String dn_res_time;
	private String dn_res_tel;
	private String dn_res_guide;
	private String dn_res_image;
	private String dn_res_l_image;
	private String dn_res_r_menu;
	
	public Restaurant(int dn_res_code, int dn_c_code, String dn_res_name, String dn_res_time, String dn_res_tel,
			String dn_res_guide, String dn_res_image, String dn_res_l_image, String dn_res_r_menu) {
		super();
		this.dn_res_code = dn_res_code;
		this.dn_c_code = dn_c_code;
		this.dn_res_name = dn_res_name;
		this.dn_res_time = dn_res_time;
		this.dn_res_tel = dn_res_tel;
		this.dn_res_guide = dn_res_guide;
		this.dn_res_image = dn_res_image;
		this.dn_res_l_image = dn_res_l_image;
		this.dn_res_r_menu = dn_res_r_menu;
	}
	
	
	public Restaurant() {
		
	}
	
	public Restaurant(String dn_res_name) {
		super();
		this.dn_res_name = dn_res_name;
	}
	
	

	public int getDn_res_code() {
		return dn_res_code;
	}

	public void setDn_res_code(int dn_res_code) {
		this.dn_res_code = dn_res_code;
	}

	public int getDn_c_code() {
		return dn_c_code;
	}

	public void setDn_c_code(int dn_c_code) {
		this.dn_c_code = dn_c_code;
	}

	public String getDn_res_name() {
		return dn_res_name;
	}

	public void setDn_res_name(String dn_res_name) {
		this.dn_res_name = dn_res_name;
	}

	public String getDn_res_time() {
		return dn_res_time;
	}

	public void setDn_res_time(String dn_res_time) {
		this.dn_res_time = dn_res_time;
	}

	public String getDn_res_tel() {
		return dn_res_tel;
	}

	public void setDn_res_tel(String dn_res_tel) {
		this.dn_res_tel = dn_res_tel;
	}

	public String getDn_res_guide() {
		return dn_res_guide;
	}

	public void setDn_res_guide(String dn_res_guide) {
		this.dn_res_guide = dn_res_guide;
	}

	public String getDn_res_image() {
		return dn_res_image;
	}

	public void setDn_res_image(String dn_res_image) {
		this.dn_res_image = dn_res_image;
	}

	public String getDn_res_l_image() {
		return dn_res_l_image;
	}

	public void setDn_res_l_image(String dn_res_l_image) {
		this.dn_res_l_image = dn_res_l_image;
	}

	public String getDn_res_r_menu() {
		return dn_res_r_menu;
	}

	public void setDn_res_r_menu(String dn_res_r_menu) {
		this.dn_res_r_menu = dn_res_r_menu;
	}
	

}
