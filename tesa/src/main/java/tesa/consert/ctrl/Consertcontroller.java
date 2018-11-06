package tesa.consert.ctrl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tesa.consert.service.ConsertService;

@Controller
public class Consertcontroller {
	@Inject
	private ConsertService service;
	
	@RequestMapping(value="/consert", method=RequestMethod.GET)
	public String consert(Model m) {
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
	    Calendar c1 = Calendar.getInstance();
		String redate = date.format(c1.getTime());
		m.addAttribute("clist",service.getconsert(redate));
		m.addAttribute("getTime",service.getcontime());
		return "view/consert";
	}
	@RequestMapping(value="/consert/{date}", method=RequestMethod.GET)
	public  String consertdate(Model m,@PathVariable String date,HttpServletRequest r) {
		String redate = date.replace('-', '/');
		m.addAttribute("clist",service.getconsert(redate));
		redate = date.substring(5).replace('-', '/');
		m.addAttribute("date" ,redate);
		return "view/consert";
	}
	
	@RequestMapping(value="/c_detail/{no}", method=RequestMethod.GET)
	public String getc_detail(@PathVariable Integer no,Model m) {
		if (Objects.isNull(no)) {
			no = 1;
		}
		System.out.println("getC"+ service.getcontime(no) );
		m.addAttribute("getTime",service.getcontime(no));
		m.addAttribute("cdelist",service.getc_detail(no));
		return "view/c_detail";
	}
	@RequestMapping(value="/c_reserve/{no}", method=RequestMethod.GET)
	public String getc_reserve(@PathVariable Integer no,Model m) {
		if (Objects.isNull(no)) {
			no = 1;
		}
		m.addAttribute("cdelist",service.getc_detail(no));
		return "view/c_reserve";
	}
	@RequestMapping(value="/c_re_detail/{no}", method=RequestMethod.GET)
	public String getc_re_detail(@PathVariable Integer no,Model m) {
		if (Objects.isNull(no)) {
			no = 1;
		}
		m.addAttribute("getTime",service.getcontime(no));
		m.addAttribute("cdelist",service.getc_detail(no));
		return "r_reserve/r_reserve";
	}
	
}
