package org.proffart.bet.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.proffart.bet.dao.UserDAO;
import org.proffart.bet.domain.User;
import org.proffart.bet.service.UserService;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class Interceptor implements HandlerInterceptor{

	public void afterCompletion(HttpServletRequest req, HttpServletResponse resp, Object handler, Exception e) throws Exception {
		//System.out.println("after request");
	}

	public void postHandle(HttpServletRequest req, HttpServletResponse resp, Object handler, ModelAndView model) throws Exception {
		//System.out.println("post handle");
	}

	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler) throws Exception {
		HttpSession session = req.getSession();
		boolean isLogined = false;
		
		User user = (User) session.getAttribute("userobj");
		
		if(req.isRequestedSessionIdValid() && user instanceof User) {
			isLogined = !user.getRole().equals(UserDAO.GUEST);
		} else {
			session.setAttribute("userobj", UserService.getGuest());
		}
		return isLogined;
	}
}
