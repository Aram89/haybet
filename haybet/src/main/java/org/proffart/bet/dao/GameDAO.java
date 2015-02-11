package org.proffart.bet.dao;

import java.util.List;

import org.proffart.bet.domain.Game;

public interface GameDAO {
	public void addGame(Game game);
	public void addGames(List<Game> games);
	public List<Game> getGames4Tournament(int tournamentID);

}
