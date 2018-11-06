package tesa.palace.ctrl;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import tesa.palace.service.PalaceService;

@Controller
public class PalaceController {
	@Inject
	private PalaceService service;
	
	@RequestMapping(value="/pa_worker", method=RequestMethod.GET)
	public String sel_worker(Model m) {
		m.addAttribute("list", service.sel_worker());
		return "admin/pa_worker";
	}
	
	@RequestMapping(value="/pa_reserv", method=RequestMethod.GET)
	public String sel_reserv(Model m) {
		m.addAttribute("list", service.sel_reserv());
		return "admin/pa_reserv";
	}

}
