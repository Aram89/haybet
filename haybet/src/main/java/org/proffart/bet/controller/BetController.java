package org.proffart.bet.controller;

import java.util.List;

import org.proffart.bet.domain.Events;
import org.proffart.bet.domain.Game;
import org.proffart.bet.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



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
	
	@RequestMapping(value="games",params = {"tournamentID"}, method = RequestMethod.GET)
	public @ResponseBody List<Game> getGames(@RequestParam(value = "tournamentID") String tournamentID,ModelMap model){
		List <Game> games = null;
		try{
			int id = Integer.parseInt(tournamentID);
			games = service.getGames(id);			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		return games;		
	}		
}
