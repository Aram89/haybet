package org.proffart.bet.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class Interceptor implements HandlerInterceptor{

	public Boolean isFirsTime = true;
	public void afterCompletion(HttpServletRequest req,
			HttpServletResponse resp, Object handler, Exception e)
			throws Exception {
		System.out.println("after request");		
	}

	public void postHandle(HttpServletRequest req, HttpServletResponse resp,
			Object handler, ModelAndView model) throws Exception {
		System.out.println("post handle");
		
	}

	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp,
			Object handler) throws Exception {
		HttpSession session = req.getSession();
		
		System.out.println("pre handle");
		//System.out.println("COUNTRIES ARE:" + FileReader.readJson("C:\\Users\\Aram\\Downloads\\country.json"));
		
		String isLogined = (String) session.getAttribute("userobj");
		
		if (isLogined == null || isLogined.equals("guest") && req.isRequestedSessionIdValid()){
			System.out.println(isFirsTime);
			isFirsTime = false;
			System.out.println(isLogined);
			System.out.println(req.getContextPath());
			//resp.sendRedirect("/register");
			resp.sendRedirect(req.getContextPath() + "/login");
			//req.getRequestDispatcher("login").forward(req, resp);
			System.out.println(req);
			req.getAttribute("uri");
			//req.isRequestedSessionIdValid()
			return true;
		}
		
		System.out.println(req.isRequestedSessionIdValid());
		System.out.println(req.getSession().getId());
		System.out.println(session.getId());
		System.out.println(isLogined);		
		return true;//isLogined;
	}
}
