package org.proffart.bet.dao;

import java.util.List;
import java.util.Map;

import org.proffart.bet.domain.Bet;
import org.proffart.bet.domain.BetGroup;
import org.proffart.bet.domain.UserBets;

public interface BetDAO {
    final public static String OK = "OK";
    final public static String NOK = "NOK";
    final public static String WAIT = "WAIT";

    public void updateStatus(Integer id, String status);
    public Integer createGroup(Integer userID, Double amount, Double coefficient, Integer betsCount);
    public void createBet(Integer groupID, Integer gameID, String betType);
    public Map<Integer,List<Bet>> getBets();
    public void incrementFinishedBetsCount (Integer id);
    public BetGroup getBetGroup (Integer betId);
    public void updateBetGroupStatus (BetGroup betGroup, String status);
    public List<UserBets> getBetsPerUser (Integer userId, Integer limit);


}
