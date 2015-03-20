package org.proffart.bet.dao;

import java.sql.Date;
import java.util.*;

import org.hibernate.Criteria;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;
import org.proffart.bet.domain.Bet;
import org.proffart.bet.domain.BetGroup;
import org.proffart.bet.domain.Game;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.*;

@Repository
public class BetDAOImpl extends AbstractDAO implements BetDAO {

    @Autowired
    SessionFactory factory;

    public void updateStatus(Integer id, String status) {
        Session session = factory.openSession();//getSession();
        Transaction tx = null;
        String hqlUpdate = "UPDATE org.proffart.bet.domain.Bet set status = :status where id = :id";
        try{
            tx = session.beginTransaction();
            Query query = session.createQuery(hqlUpdate);
            query.setParameter("status", status).setParameter("id", id).executeUpdate();
            tx.commit();
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
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

    public Map<Integer, List<Bet>> getBets() {
        Date now = new Date(System.currentTimeMillis());
        DetachedCriteria ownerCriteria = DetachedCriteria.forClass(Game.class);
        ownerCriteria.setProjection(Property.forName("id"));
        ownerCriteria.add(Restrictions.lt("date", now));

        Criteria criteria = getSession().createCriteria(Bet.class);
        criteria.add(Property.forName("gameID").in(ownerCriteria));
        criteria.add(Restrictions.eq("status", "WAIT"));
        Map<Integer, List<Bet>> bets  = new HashMap<Integer, List<Bet>>();
        @SuppressWarnings("unchecked")
		List<Bet> results = (List<Bet>) criteria.list();
        for (Bet result : results){
            List<Bet> betsPerGame = null;
            Integer gameID = result.getGameID();
            if (bets.containsKey(gameID)){
                betsPerGame = bets.get(gameID);
            }
            else{
                betsPerGame = new ArrayList<Bet>();
            }
            betsPerGame.add(result);
            bets.put(gameID,betsPerGame);
        }
        return bets;
    }




}
