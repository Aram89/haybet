package org.proffart.bet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;
import org.proffart.bet.domain.Country;
import org.proffart.bet.domain.Game;
import org.proffart.bet.domain.Tournament;
import org.proffart.bet.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GameController {
	@Autowired
	GameService service;
	
	
	
	@RequestMapping(value="aaa", method = RequestMethod.GET)
	public String showBets(ModelMap model, HttpSession session){
		try{
			String countries = FileReader.readJson("C:\\Users\\Aram\\Downloads\\country (2).json");
			String tournaments = FileReader.readJson("C:\\Users\\Aram\\Downloads\\tournament (2).json");
			String games = FileReader.readJson("C:\\Users\\Aram\\Downloads\\games (2).json");
			ObjectMapper mapper = new ObjectMapper();
			List<Country> c = mapper.readValue(countries, TypeFactory.defaultInstance().constructCollectionType(List.class,  
					   Country.class));
			List<Tournament> t = mapper.readValue(tournaments, TypeFactory.defaultInstance().constructCollectionType(List.class,  
					   Tournament.class));
			List<Game> g = mapper.readValue(games, TypeFactory.defaultInstance().constructCollectionType(List.class,  
					   Game.class));
			List<Game> newGames = service.check4NewGames(g,0,12000000);
			System.out.println("AAAAAAAA" + newGames);
			service.addCountries(c);
			service.addTournaments(t);
			service.addGames(newGames);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "games";
	}

}
