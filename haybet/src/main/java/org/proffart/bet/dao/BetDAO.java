package org.proffart.bet.dao;

public interface BetDAO {
	final public static String OK = "OK";
	final public static String NOK = "NOK";
	final public static String WAIT = "WAIT";
	
	public void setStatus();
	public int createGroup(double amount, double coefficient, int betsCount);
	public int createBet(int groupID, int gameID, String betType);
	
}
