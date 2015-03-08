package org.proffart.bet.dao;

public interface BetDAO {
	
	public void setStatus();
	public int crateGroup(double amount, double coefficient, int betsCount);
	public int crateBet(int groupID, int gameID, String betType);
	
}
