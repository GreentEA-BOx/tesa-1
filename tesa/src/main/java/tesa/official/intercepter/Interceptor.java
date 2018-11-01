package tesa.official.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class Interceptor implements HandlerInterceptor {

	 
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object o) throws Exception {
		HttpSession session = null;
		String id = (String) session.getAttribute("id");
		if(id==null) {
			return false;
		}else {
			return true;
		}
	
	}

	@Override
	public void postHandle(HttpServletRequest req, HttpServletResponse res, Object o, ModelAndView modelAndView)
			throws Exception {
		System.out.println("postHandle!!!!");
		if (modelAndView.getModelMap().containsKey("status")) {
			String status = (String) modelAndView.getModelMap().get("status");
			if (status.equals("SUCCESS!")) {
				status = "Authentication " + status;
				modelAndView.addObject("status", status);
			}
		}
	}

	@Override
	public void afterCompletion(HttpServletRequest req, HttpServletResponse res, Object o, Exception e)
			throws Exception {
		System.out.println("afterCompletion!!!!");
	}
}
