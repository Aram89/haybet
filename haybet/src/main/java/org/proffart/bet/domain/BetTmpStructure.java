package org.proffart.bet.domain;

import java.util.List;

public class BetTmpStructure
{
	private double amount;
	private List<GameTmpStructure> games;
	
	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public List<GameTmpStructure> getGames() {
		return games;
	}

	public void setGames(List<GameTmpStructure> games) {
		this.games = games;
	}
	
	public int getBetsCount() {
		return games.size(); 
	}

	public static class GameTmpStructure {
		private int gameId;
		private String betType;
		public int getGameId() {
			return gameId;
		}
		public void setGameId(int gameId) {
			this.gameId = gameId;
		}
		public String getBetType() {
			return betType;
		}
		public void setBetType(String betType) {
			this.betType = betType;
		}
    }
}