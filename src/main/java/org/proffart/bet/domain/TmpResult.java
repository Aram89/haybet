package org.proffart.bet.domain;

public class TmpResult {
	
	private String uString;
	private String tournament;
	private String dateTime;
	private String game;
	private String gameResult;	
	
	public String getuString() {
		return uString;
	}
	public void setuString(String uString) {
		this.uString = uString;
	}
	public String getTournament() {
		return tournament;
	}
	public void setTournament(String tournament) {
		this.tournament = tournament;
	}
	public String getDateTime() {
		return dateTime;
	}
	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}
	public String getGame() {
		return game;
	}
	public void setGame(String game) {
		this.game = game;
	}
	public String getGameResult() {
		return gameResult;
	}
	public void setGameResult(String gameResult) {
		this.gameResult = gameResult;
	}
}
