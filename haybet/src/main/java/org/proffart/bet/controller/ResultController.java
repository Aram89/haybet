package org.proffart.bet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;
import org.proffart.bet.domain.Country;
import org.proffart.bet.domain.Game;
import org.proffart.bet.domain.TmpResult;
import org.proffart.bet.domain.Tournament;
import org.proffart.bet.service.GameService;
import org.proffart.bet.service.ResultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ResultController {
	
	@Autowired
    ResultService service;

    @RequestMapping(value="result", method = RequestMethod.GET)
	public void showResults(ModelMap model, HttpSession session){
		try{
			String countries = FileReader.readJson("C:\\Users\\Aram\\Downloads\\results.json");
			ObjectMapper mapper = new ObjectMapper();
			List<TmpResult> results = mapper.readValue(countries, TypeFactory.defaultInstance().constructCollectionType(List.class,
					   TmpResult.class));
            service.saveResults(results);

		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
