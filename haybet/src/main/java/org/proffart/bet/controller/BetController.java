package org.proffart.bet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;
import org.proffart.bet.domain.Country;
import org.proffart.bet.domain.Events;
import org.proffart.bet.domain.Tournament;
import org.proffart.bet.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class BetController {
	@Autowired
	GameService service;
		
        @RequestMapping(value="games", method = RequestMethod.GET)
	public String getEvents(ModelMap model){
		Events event = new Events();
		event.setTournamnetsByCounty(service.getTournamnetsByCounty());
		model.addAttribute("event",event);
		return "games";
	}
	
	@RequestMapping(value="aaa", method = RequestMethod.GET)
	public String insertEventsFromJSON(ModelMap model, HttpSession session){
		try{
			String countries = FileReader.readJson("D:\\WebServers\\home\\test4.loc\\www\\toto\\country.json");
			String tournaments = FileReader.readJson("D:\\WebServers\\home\\test4.loc\\www\\toto\\tournament.json");
			ObjectMapper mapper = new ObjectMapper();
			List<Country> c = mapper.readValue(countries, TypeFactory.defaultInstance().constructCollectionType(List.class, Country.class));
			List<Tournament> t = mapper.readValue(tournaments, TypeFactory.defaultInstance().constructCollectionType(List.class, Tournament.class));
			service.addCountries(c);
			service.addTournaments(t);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "games";
	}	
}
