package org.proffart.bet.dao;

import org.proffart.bet.domain.Bet;
import org.proffart.bet.domain.BetGroup;
import org.springframework.stereotype.Repository;

@Repository 
public class BetDAOImpl extends AbstractDAO implements BetDAO {

	public void setStatus() {
		
		
	}
	
	public int crateGroup(double amount, double coefficient, int betsCount) {
		int groupID = 0;
		BetGroup betGroup = new BetGroup();
		//betGroup.setUserID(userID); TODO user get session
		betGroup.setAmount(amount);
		betGroup.setCoefficient(coefficient);
		betGroup.setBetsCount(betsCount);
		getSession().save(betGroup);
		groupID = betGroup.getID();
		return groupID;
	}
	
	public int crateBet(int groupID, int gameID, String betType) {
		int betID = 0;
		Bet bet = new Bet();
		bet.setBetGroupID(groupID);
		bet.setGameID(gameID);
		bet.setBetType(betType);
		getSession().save(bet);
		betID = bet.getID();
		return betID; 
	}
	
	

}
