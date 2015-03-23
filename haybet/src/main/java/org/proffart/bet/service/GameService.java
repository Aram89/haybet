package org.proffart.bet.service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.proffart.bet.dao.CountryDAO;
import org.proffart.bet.dao.GameDAO;
import org.proffart.bet.dao.TournamentDAO;
import org.proffart.bet.domain.Country;
import org.proffart.bet.domain.Game;
import org.proffart.bet.domain.Tournament;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Transactional
@Service
public class GameService {
	@Autowired
	CountryDAO dao;
	
	@Autowired
	TournamentDAO tDAO;
	
	@Autowired
	GameDAO gameDAO;
	
	
	public void addGames(List<Game> games){
		gameDAO.addGames(games);
	}
	
	public List<Game> getGames (int tournamentID){
		return gameDAO.getGames4Tournament(tournamentID);
	}
	
	public void addCountries(List<Country> countries){
		dao.addCountries(countries);
	}
	
	public void addTournaments(List<Tournament> tournaments){
		tDAO.addTournaments(tournaments);
	}

	public List<Country> getCountriesList(){
		return dao.getCountriesList();
	}
	
	public List<Tournament> getTournaments(){
		return tDAO.getTournaments();
	}
	
	public Map <Country, ArrayList<Tournament>> getTournamnetsByCounty(){
		List <Country> countries = getCountriesList();
		List <Tournament> tournamnets = getTournaments();
		Map <Country, ArrayList<Tournament>> tournamnentsByCountry = new LinkedHashMap<Country, ArrayList<Tournament>>();
		int j = 0;		
		for (int i = 0; i< countries.size(); ++i){
			ArrayList<Tournament> t = new ArrayList<Tournament>();
			int id = countries.get(i).getId();
			while (j < tournamnets.size() && id == tournamnets.get(j).getCountryId()){
				if (tournamnentsByCountry.containsKey(id)){
					t = tournamnentsByCountry.get(id);
				}
				t.add(tournamnets.get(j));
				tournamnentsByCountry.put(countries.get(i), t);
				++j;
			}
			
		}
		return tournamnentsByCountry;
	}
	
	public List<Game> check4NewGames(List<Game> fromJSON, int minID, int maxID){
		List <Game> fromDB = gameDAO.getGames(minID, maxID);
		List<Game> newGames = new ArrayList<Game>();
		for (Game g : fromJSON){
			if (fromDB.contains(g)){
				//fromJSON.remove(g);
				newGames.add(g);
			}
		}
		return newGames;		
	}
	
	public Map <String, Integer> getGamesByDate(){
		return gameDAO.getGamesByDate();
	}
	
	public List<Game> getLastActiveGames() {
		return gameDAO.getLastActiveGames();
	}
}
