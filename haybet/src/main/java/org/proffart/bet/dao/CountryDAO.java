package org.proffart.bet.dao;

import java.util.List;

import org.proffart.bet.domain.Country;
import org.proffart.bet.domain.Tournament;

public interface CountryDAO {

	public void addCountry(Country country);
	public void addCountries (List<Country> countries);
	public List<Country> getCountriesList();
	
}
