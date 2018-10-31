package tesa.official.ctrl;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

@Controller

public class authController {
	
	private static final Logger logger = LoggerFactory.getLogger(authController.class);

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model m) {
			System.out.println("탐");
		ModelAndView model = new ModelAndView();
		if (error != null) {
			System.out.println("error");
			model.addObject("error", "Invalid username and password!");
		}
		if (logout != null) {
			System.out.println("logout");
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("index");
		m.addAttribute(model);
		return model;
	}
}
