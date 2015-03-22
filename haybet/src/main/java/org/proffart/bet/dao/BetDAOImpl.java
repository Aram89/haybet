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
        Session session = factory.openSession();
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

    public void incrementFinishedBetsCount(Integer id) {
        Session session = factory.openSession();
        Transaction tx = null;
        String hqlUpdate = "UPDATE org.proffart.bet.domain.BetGroup SET finishedBetsCount = finishedBetsCount +1" +
                " WHERE id = :id";
        try{
            tx = session.beginTransaction();
            Query query = session.createQuery(hqlUpdate);
            query.setParameter("id", id).executeUpdate();
            tx.commit();
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
    }

    public BetGroup getBetGroup(Integer betId) {
        BetGroup betGroup = null;
        DetachedCriteria ownerCriteria = DetachedCriteria.forClass(Bet.class);
        ownerCriteria.setProjection(Property.forName("betGroupID"));
        ownerCriteria.add(Restrictions.eq("id", betId));
        Criteria criteria = getSession().createCriteria(BetGroup.class);
        criteria.add(Property.forName("id").in(ownerCriteria));
        List results = criteria.list();
        betGroup = (BetGroup)results.get(0);
        if (results.size() > 1){
            //TODO (something is wrong)
        }
        return  betGroup;
    }

    public void updateBetGroupStatus (BetGroup betGroup, String status) {
        String hqlUpdate = "UPDATE org.proffart.bet.domain.BetGroup SET status = :status" +
                " WHERE id = :id";

        Map<String,Object> params = new HashMap<String, Object>();
        params.put("id", betGroup.getID());
        params.put("status", status);
        update(hqlUpdate,params);
    }
}
