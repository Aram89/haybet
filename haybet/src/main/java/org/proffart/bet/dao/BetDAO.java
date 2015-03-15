package org.proffart.bet.dao;

import java.util.List;

import org.proffart.bet.domain.Bet;

public interface BetDAO {
	final public static String OK = "OK";
	final public static String NOK = "NOK";
	final public static String WAIT = "WAIT";
	
	public void setStatus();
	public Integer createGroup(Double amount, Double coefficient, Integer betsCount);
	public Integer createBet(Integer groupID, Integer gameID, String betType);
	public List <Bet> getBets();
	
}
