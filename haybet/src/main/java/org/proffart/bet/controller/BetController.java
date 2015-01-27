package org.proffart.bet.controller;

import javax.servlet.http.HttpSession;

import org.proffart.bet.domain.User;
import org.proffart.bet.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.security.*;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class BetController {
	@Autowired
	UserService service;
		
	@RequestMapping(value="bets", method = RequestMethod.GET)
	public String showBets(ModelMap model, HttpSession session){
		/*		
		String sid = session.getId();
		System.out.println(sid);
		User user = (User) session.getAttribute("userobj");
		System.out.println(user);
		if(user != null){
			model.addAttribute("nickName",user.getNickName());
		}		
		return new ModelAndView("bets", "user",user);
		*/
		return "bets";
	}	
}
