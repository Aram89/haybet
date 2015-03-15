package org.proffart.bet.dao;

import java.util.List;

import org.hibernate.Query;
import org.proffart.bet.domain.Tournament;
import org.springframework.stereotype.Repository;

@Repository
public class TournamentDAOImpl extends AbstractDAO implements TournamentDAO {

	public void addTournament(Tournament tournament) {
		persist(tournament);		
	}

	public void addTournaments(List<Tournament> tournaments) {
		for(Tournament t : tournaments){
			addTournament(t);
		}
		
	}

	public List<Tournament> getTournaments() {
		String hql = "FROM org.proffart.bet.domain.Tournament ORDER BY countryTotoID";
		Query query = getSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Tournament> results = query.list();
		return results;		
	}

}
