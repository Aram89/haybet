package org.proffart.bet.service;

import java.util.List;

import javax.transaction.Transactional;

import org.proffart.bet.dao.CountryDAO;
import org.proffart.bet.dao.TournamentDAO;
import org.proffart.bet.domain.Country;
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
}