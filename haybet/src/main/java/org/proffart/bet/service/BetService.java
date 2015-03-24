package org.proffart.bet.service;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.proffart.bet.dao.BetDAO;
import org.proffart.bet.dao.GameDAO;
import org.proffart.bet.domain.Bet;
import org.proffart.bet.domain.BetGroup;
import org.proffart.bet.domain.BetTmpStructure;
import org.proffart.bet.domain.Game;
import org.proffart.bet.domain.User;
import org.proffart.bet.domain.UserBets;
import org.proffart.bet.utils.ReflectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Transactional
@Service
public class BetService {
	@Autowired
	BetDAO dao;
	
	@Autowired
	GameDAO gDAO;
	
	@Autowired
	UserService userService;

	
	public Boolean isValid(BetTmpStructure betTmpStructure) {
		Boolean isValid = UserService.getCurrentUser().getBalance() >= betTmpStructure.getAmount();
		if (isValid) {
			// TODO do something
		}
		return isValid;
	}
	
	public void doBet(BetTmpStructure betTmpStructure) {
		double coefficient = collectCoefficient(betTmpStructure.getGames());
		int betsCount = betTmpStructure.getBetsCount();
		User user = UserService.getCurrentUser();
		int groupID = dao.createGroup(user.getId(), betTmpStructure.getAmount(), coefficient, betsCount);
		userService.debit(user, betTmpStructure.getAmount());
		for(BetTmpStructure.GameTmpStructure gameTmpStructure : betTmpStructure.getGames()) {
			dao.createBet(groupID, gameTmpStructure.getGameId(), gameTmpStructure.getBetType());
		}
	}
	
	private double collectCoefficient(List<BetTmpStructure.GameTmpStructure> gameTmpStructures) {
		double coefficient = 1;
		for(BetTmpStructure.GameTmpStructure gameTmpStructure : gameTmpStructures ) {
			Game game = gDAO.getGameByID(gameTmpStructure.getGameId());
			Double gameCoefficient = (Double)ReflectUtils.callGetter(gameTmpStructure.getBetType(), game);
			coefficient *= gameCoefficient.doubleValue();
		}
		return coefficient;
	}

    public Map<Integer, List<Bet>> getBets(){
        return dao.getBets();
    }

    public void updateStatus (Integer id, String status){
        dao.updateStatus(id, status);
    }

    public void incrementFinishedBetsCount (Integer id){
    	dao.incrementFinishedBetsCount(id);
    }

    public BetGroup getBetGroup (Integer betId){
        return dao.getBetGroup(betId);
    }

    public void updateBetGroupStatus (BetGroup betGroup, String status){
        dao.updateBetGroupStatus(betGroup, status);
    }

    public List<UserBets> getBetsPerUser (Integer userId) {
        return dao.getBetsPerUser(userId);
    }
}
