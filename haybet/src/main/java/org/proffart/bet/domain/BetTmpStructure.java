package org.proffart.bet.domain;

import java.util.List;

public class BetTmpStructure
{
	private double amount;
	private List<GameTmpStructure> gamesTmpStructure;
	
	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public List<GameTmpStructure> getGamesTmpStructure() {
		return gamesTmpStructure;
	}

	public void setGamesTmpStructure(List<GameTmpStructure> gamesTmpStructure) {
		this.gamesTmpStructure = gamesTmpStructure;
	}

	static class GameTmpStructure {
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
