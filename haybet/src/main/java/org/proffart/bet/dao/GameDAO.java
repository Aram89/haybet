package org.proffart.bet.dao;

import java.util.List;

import org.proffart.bet.domain.Game;

public interface GameDAO {
	public void addGame(Game game);
	public void addGames(List<Game> games);
	public Game getGameByID(int gameID);
	public List<Game> getGames4Tournament(int tournamentID);
	public List<Game> getGames(Integer minID, Integer maxID);
	public int getGameIdByHash(String hash);
	public List<Game> getGamesByDate();

}
