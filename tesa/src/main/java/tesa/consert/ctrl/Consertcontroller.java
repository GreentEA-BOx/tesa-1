package tesa.consert.ctrl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Objects;

import javax.inject.Inject;

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
		return "view/consert";
	}
	@RequestMapping(value="/consert/{date}", method=RequestMethod.GET)
	public void consertdate(Model m,@PathVariable String date) {
		String redate = date.replace('-', '/');
		m.addAttribute("clist",service.getconsert(redate));
		/*return "view/consert";*/
	}
	
	@RequestMapping(value="/c_detail/{no}", method=RequestMethod.GET)
	public String getc_detail(@PathVariable Integer no,Model m) {
		if (Objects.isNull(no)) {
			no = 1;
		}
		m.addAttribute("cdelist",service.getc_detail(no));
		return "view/c_detail";
	}
	
}
