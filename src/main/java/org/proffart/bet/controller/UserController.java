package org.proffart.bet.controller;
import javax.validation.Valid;

import org.proffart.bet.domain.User;
import org.proffart.bet.service.BetService;
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
	UserService userService;
	
	@Autowired
	BetService betService;
	//private static final Logger log = Logger.getLogger(BetController.class);
	//@Autowired
	//BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	@RequestMapping(value="login", method = RequestMethod.GET)
	public String showLoginForm(ModelMap model) {
		if(UserService.isLogined()) {
			return "redirect:/user-profile";
		}
		User user = new User();
		model.addAttribute("user",user );
		return "login";
	}
	
	@RequestMapping(value="login", method = RequestMethod.POST)
	public String signIn(@ModelAttribute("user") User user, BindingResult result, ModelMap model) {
		if (userService.checkCredentials(user.getNickName(), user.getPassword())){
			user = userService.getUserByNickName(user.getNickName());
			model.addAttribute("userobj", user);
			return "redirect:/";
			//return new ModelAndView("bets", "user", user);
		}
		User guest = UserService.getGuest();
		guest.setNickName(user.getNickName());
		model.addAttribute("userobj", guest);
		return "login";
	}
	
	@RequestMapping(value="logout", method = RequestMethod.GET)
	public String signOut(ModelMap model) {
		model.addAttribute("userobj", UserService.getGuest());
		//return "index";
		return "redirect:/";
	}
	
	@RequestMapping(value="register", method = RequestMethod.GET)
	public String showRegisterForm(ModelMap model) {
		User user = new User();
		model.addAttribute("user",user );
		return "register";
	}
	
	
	@RequestMapping(value="register", method = RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute("user") @Valid User user, BindingResult result, ModelMap model) {
		//System.out.println(result);
		if (result.hasErrors()){
			//System.out.println(result.getAllErrors());
			return new ModelAndView("user");
		}
		
		//String encodedPass = passwordEncoder.encode(user.getPassword());
		//System.out.println(encodedPass);
		//user.setPassword(encodedPass);
		userService.saveUser(user);
		model.addAttribute("nickName",user.getNickName());
		model.addAttribute("email",user.getEmail());
		model.addAttribute("userobj", "true");
		return new ModelAndView("success","user",user);		
	}

	@RequestMapping(value="user-profile", method = RequestMethod.GET)
	public ModelAndView showUserProfile(ModelMap model) {
		return new ModelAndView("user/user-profile", "bets", betService.getBetsPerUser(10));
	}
	
	@RequestMapping(value="user-bets", method = RequestMethod.GET)
	public ModelAndView showUserAllBets(ModelMap model) {
		return new ModelAndView("user/all-bets", "bets", betService.getBetsPerUser(-1));
	}
	
	
	
}
