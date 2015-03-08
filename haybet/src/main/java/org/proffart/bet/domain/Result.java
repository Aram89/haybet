package org.proffart.bet.domain;

public class Result {

	private int gameID;
	public int getGameID() {
		return gameID;
	}
	public void setGameID(int gameID) {
		this.gameID = gameID;
	}
	public String getuString() {
		return uString;
	}
	public void setuString(String uString) {
		this.uString = uString;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	private String uString;
	private String score;
}
