package org.proffart.bet.dao;

import java.sql.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;
import org.proffart.bet.domain.Bet;
import org.proffart.bet.domain.BetGroup;
import org.proffart.bet.domain.Game;
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

    public Map<Integer, Bet> getBets() {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        Date now = new Date(System.currentTimeMillis());
        DetachedCriteria ownerCriteria = DetachedCriteria.forClass(Game.class);
        ownerCriteria.setProjection(Property.forName("id"));
        ownerCriteria.add(Restrictions.lt("date", now));

        Criteria criteria = getSession().createCriteria(Bet.class);
        criteria.add(Property.forName("gameID").in(ownerCriteria));
        criteria.add(Restrictions.eq("status", "WAIT"));
        Map<Integer, Bet> bets  = new HashMap<Integer, Bet>();
        List<Bet> results = criteria.list();
        for (Bet result : results){
            bets.put(result.getGameID(), result);
        }
        return bets;
    }




}
