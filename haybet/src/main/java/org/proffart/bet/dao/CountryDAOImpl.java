package org.proffart.bet.dao;

import java.util.List;

import org.hibernate.Query;
import org.proffart.bet.domain.Country;
import org.springframework.stereotype.Repository;

@Repository 
public class CountryDAOImpl extends AbstractDAO implements CountryDAO{

	public void addCountry(Country country) {
		persist(country);		
	}

	public void addCountries(List<Country> countries) {
		for(Country c : countries){
			addCountry(c);
		}		
	}

	public List<Country> getCountriesList() {
		String hql = "FROM org.proffart.bet.domain.Country";
		Query query = getSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Country> results = (List<Country>) query.list();
		return results;
	}

}
