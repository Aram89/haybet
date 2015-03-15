package org.proffart.bet.dao;

import org.proffart.bet.domain.Bet;
import org.proffart.bet.domain.BetGroup;
import org.springframework.stereotype.Repository;

@Repository 
public class BetDAOImpl extends AbstractDAO implements BetDAO {

	public void setStatus() {
		
		
	}
	
	public int createGroup(double amount, double coefficient, int betsCount) {
		int groupID = 0;
		BetGroup betGroup = new BetGroup();
		betGroup.setUserID(0); //TODO user get session
		betGroup.setAmount(amount);
		betGroup.setCoefficient(coefficient);
		betGroup.setBetsCount(betsCount);
		betGroup.setFinishedBetsCount(0);
		betGroup.setStatus(WAIT);
		getSession().save(betGroup);
		groupID = betGroup.getID();
		return groupID;
	}
	
	public int createBet(int groupID, int gameID, String betType) {
		int betID = 0;
		Bet bet = new Bet();
		bet.setBetGroupID(groupID);
		bet.setGameID(gameID);
		bet.setBetType(betType);
		bet.setIsFinished(false);
		bet.setStatus(WAIT);
		getSession().save(bet);
		betID = bet.getID();
		return betID; 
	}
	
	

}
