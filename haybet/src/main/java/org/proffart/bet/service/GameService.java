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
	
	public Map <Country, ArrayList<Tournament>> getTournamnetsByCounty(){
		List <Country> countries = getCountriesList();
		List <Tournament> tournamnets = getTournaments();
		Map <Country, ArrayList<Tournament>> tournamnentsByCountry = new HashMap<Country, ArrayList<Tournament>>();
		int j = 0;		
		for (int i = 0; i< countries.size(); ++i){
			ArrayList<Tournament> t = new ArrayList<Tournament>();
			int id = countries.get(i).getId();
			while (j < tournamnets.size() && id == tournamnets.get(j).getCountryId()){
				if (tournamnentsByCountry.containsKey(id)){
					t = tournamnentsByCountry.get(id);
					t.add(tournamnets.get(j));
					tournamnentsByCountry.put(countries.get(i), t);
				}
				else{					
					t.add(tournamnets.get(j));
					tournamnentsByCountry.put(countries.get(i), t);
				}				
				++j;
			}
			
		}
		return tournamnentsByCountry;		
	}
}
