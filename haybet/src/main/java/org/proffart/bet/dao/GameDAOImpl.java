package org.proffart.bet.dao;

import java.util.List;

import org.hibernate.Query;
import org.proffart.bet.domain.Game;
import org.springframework.stereotype.Repository;

@Repository
public class GameDAOImpl extends AbstractDAO implements GameDAO {

	public void addGame(Game game) {
		persist(game);
		
	}

	public void addGames(List<Game> games) {
		for(Game game : games){
			addGame(game);
		}		
	}

	public List<Game> getGames4Tournament(int tournamentID) {
		String hql = "FROM org.proffart.bet.domain.Game g where g.tournamentTotoID = :id ";
		Query query = getSession().createQuery(hql);
		query.setParameter("id",tournamentID);
		@SuppressWarnings("unchecked")
		List<Game> results = query.list();
		return results;		
	}

}
