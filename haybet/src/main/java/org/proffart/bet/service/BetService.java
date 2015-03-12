package org.proffart.bet.service;

import java.util.List;

import org.proffart.bet.dao.BetDAO;
import org.proffart.bet.dao.GameDAO;
import org.proffart.bet.domain.BetTmpStructure;
import org.proffart.bet.domain.Game;
import org.proffart.bet.utils.ReflectUtils;
import org.springframework.beans.factory.annotation.Autowired;

public class BetService {
	@Autowired
	BetDAO dao;
	
	@Autowired
	GameDAO gDAO;

	
	public boolean valid(BetTmpStructure betTmpStructure) {
		//TODO implement valid method
		return true;
	}
	
	public void doBet(BetTmpStructure betTmpStructure) {
		double coefficient = collectCoefficient(betTmpStructure.getGamesTmpStructure());
		int betsCount = betTmpStructure.getBetsCount();
		int groupID = dao.crateGroup(betTmpStructure.getAmount(), coefficient, betsCount);
		for(BetTmpStructure.GameTmpStructure gameTmpStructure : betTmpStructure.getGamesTmpStructure()) {
			dao.crateBet(groupID, gameTmpStructure.getGameId(), gameTmpStructure.getBetType());
		}
	}
	
	protected double collectCoefficient(List<BetTmpStructure.GameTmpStructure> gameTmpStructures) {
		double coefficient = 1;
		for(BetTmpStructure.GameTmpStructure gameTmpStructure : gameTmpStructures ) {
			Game game = gDAO.getGameByID(gameTmpStructure.getGameId());
			Double gameCoefficient = (Double)ReflectUtils.callGetter(gameTmpStructure.getBetType(), game);
			coefficient *= gameCoefficient.doubleValue();
		}
		return coefficient;
	}
	
	
}
