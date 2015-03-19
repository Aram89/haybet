package org.proffart.bet.dao;

import java.util.List;



import org.hibernate.Query;
import org.proffart.bet.domain.Bet;
import org.proffart.bet.domain.BetGroup;
import org.springframework.stereotype.Repository;

@Repository 
public class BetDAOImpl extends AbstractDAO implements BetDAO {

	public void setStatus() {
		
		
	}
	
	public Integer createGroup(Integer userID, Double amount, Double coefficient, Integer betsCount) {
		int groupID = 0;
		BetGroup betGroup = new BetGroup();
		betGroup.setUserID(userID);
		betGroup.setAmount(amount);
		betGroup.setCoefficient(coefficient);
		betGroup.setBetsCount(betsCount);
		betGroup.setFinishedBetsCount(0);
		betGroup.setStatus(WAIT);
		getSession().save(betGroup);
		groupID = betGroup.getID();
		return groupID;
	}
	
	public Integer createBet(Integer groupID, Integer gameID, String betType) {
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
	
	public List<Bet> getBets() {
		String hql = "FROM org.proffart.bet.domain.Bet b where b.status=WAIT";
		Query query = getSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Bet> results = query.list();
		return results;
	}
	
	
	

}
