package org.proffart.bet.dao;

import java.util.List;
import java.util.Map;

import org.proffart.bet.domain.Bet;

public interface BetDAO {
    final public static String OK = "OK";
    final public static String NOK = "NOK";
    final public static String WAIT = "WAIT";

    public void updateStatus(Integer id, String status);
    public Integer createGroup(Integer userID, Double amount, Double coefficient, Integer betsCount);
    public Integer createBet(Integer groupID, Integer gameID, String betType);
    public Map<Integer,List<Bet>> getBets();

}
