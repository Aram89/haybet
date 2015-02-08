package org.proffart.bet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;
import org.proffart.bet.domain.Country;
import org.proffart.bet.domain.Test;
import org.proffart.bet.domain.Tournament;
import org.proffart.bet.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.security.*;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;


@Controller
public class BetController {
	@Autowired
	GameService service;
		
	@RequestMapping(value="games", method = RequestMethod.GET)
	public String showLoginForm(ModelMap model){
		Country country = new Country();
		Test test = new Test();
		test.setTest("TEST");
		test.setTournaments(service.getTournaments());
		model.addAttribute("country",country);
		model.addAttribute("test",test );
		return "games";
	}
	
	@RequestMapping(value="aaa", method = RequestMethod.GET)
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
		try{
			String countries = FileReader.readJson("C:\\Users\\Aram\\Downloads\\country.json");
			String tournaments = FileReader.readJson("C:\\Users\\Aram\\Downloads\\tournament.json");
			ObjectMapper mapper = new ObjectMapper();
			List<Country> c = mapper.readValue(countries, TypeFactory.defaultInstance().constructCollectionType(List.class,  
					   Country.class));
			List<Tournament> t = mapper.readValue(tournaments, TypeFactory.defaultInstance().constructCollectionType(List.class,  
					   Tournament.class));
			service.addCountries(c);
			service.addTournaments(t);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "games";
	}	
}
