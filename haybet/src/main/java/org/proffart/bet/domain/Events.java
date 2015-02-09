package org.proffart.bet.domain;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Events {
	
	private List <Tournament> tournaments;
	private List <Country> countries;
	private Map <Country, ArrayList<Tournament>> tournamnetsByCounty;
	
	public Map<Country, ArrayList<Tournament>> getTournamnetsByCounty() {
		return tournamnetsByCounty;
	}

	public void setTournamnetsByCounty(
			Map<Country, ArrayList<Tournament>> tournamnetsByCounty) {
		this.tournamnetsByCounty = tournamnetsByCounty;
	}

	public List<Country> getCountries() {
		return countries;
	}

	public void setCountries(List<Country> countries) {
		this.countries = countries;
	}

	public List<Tournament> getTournaments() {
		return tournaments;
	}

	public void setTournaments(List<Tournament> list) {
		this.tournaments = list;
	}
}
