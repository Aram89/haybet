package org.proffart.bet.dao;

public interface BetDAO {
	final public static String OK = "OK";
	final public static String NOK = "NOK";
	final public static String WAIT = "WAIT";
	
	public void setStatus();
	public int crateGroup(double amount, double coefficient, int betsCount);
	public int crateBet(int groupID, int gameID, String betType);
	
}
