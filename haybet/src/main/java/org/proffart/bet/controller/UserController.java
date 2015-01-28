package org.proffart.bet.controller;
import javax.validation.Valid;

import org.proffart.bet.domain.User;
import org.proffart.bet.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
//import org.springframework.security.*;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;

@SessionAttributes("userobj")
@Controller
public class UserController {
	@Autowired
	UserService service;
	//private static final Logger log = Logger.getLogger(BetController.class);
	//@Autowired
	//BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	@RequestMapping(value="login", method = RequestMethod.GET)
	public String showLoginForm(ModelMap model){
		User user = new User();
		model.addAttribute("user",user );
		return "login";
	}
	
	@RequestMapping(value="login", method = RequestMethod.POST)
	public ModelAndView signIn(@ModelAttribute("user") User user, BindingResult result,
            ModelMap model){
		if (service.checkCredentials(user.getNickName(), user.getPassword())){
			model.addAttribute("userobj", "user");
			return new ModelAndView("bets", "user", user);
		}
		model.addAttribute("userobj", "guest");
		return new ModelAndView("login", "user", user);		
	}
	
	@RequestMapping(value="register", method = RequestMethod.GET)
	public String showRegisterForm(ModelMap model){
		User user = new User();
		model.addAttribute("user",user );
		return "register";
	}
	
	
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute("user") @Valid User user, BindingResult result,
            ModelMap model){
		System.out.println(result);
		if (result.hasErrors()){
			System.out.println(result.getAllErrors());
			return new ModelAndView("user");
		}
		//String encodedPass = passwordEncoder.encode(user.getPassword());
		//System.out.println(encodedPass);
		//user.setPassword(encodedPass);
		service.saveUser(user);
		model.addAttribute("nickName",user.getNickName());
		model.addAttribute("email",user.getEmail());
		model.addAttribute("userobj", "true");
		return new ModelAndView("success","user",user);		
	}
	
	
}
