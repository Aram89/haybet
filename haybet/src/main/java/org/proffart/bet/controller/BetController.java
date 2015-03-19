package org.proffart.bet.controller;

import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;
import org.proffart.bet.domain.BetTmpStructure;
import org.proffart.bet.domain.Events;
import org.proffart.bet.domain.Game;
import org.proffart.bet.domain.TmpResult;
import org.proffart.bet.service.GameService;
import org.proffart.bet.service.BetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;


@Controller
public class BetController {
	@Autowired
	GameService service;
	
	@Autowired
	BetService betService;

    @RequestMapping(value="bets", method = RequestMethod.GET)
    public void getBets(ModelMap model){
        betService.getBets();
    }


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
	
	@RequestMapping(value="games/bet",params = {"data"}, method = RequestMethod.POST)
	public @ResponseBody BetTmpStructure doBet(@RequestParam(value = "data") String data, ModelMap model) throws
	JsonParseException, JsonMappingException, IOException {
		BetTmpStructure betJSON = new ObjectMapper().readValue(data, BetTmpStructure.class);
		betService.doBet(betJSON);
		return betJSON;
	}	
}
