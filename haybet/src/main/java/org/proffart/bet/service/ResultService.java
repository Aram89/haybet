package org.proffart.bet.service;

import org.proffart.bet.domain.Betting;

public class ResultService {

	public Betting parseResult(String result){
		Betting bet = new Betting();
		try{
			String[] scores = result.split(":");
			Integer team1Score = Integer.parseInt(scores[0]);
			Integer team2Score = Integer.parseInt(scores[1]);
			if (team1Score > team2Score)
				bet.setP1(true);
			else if (team1Score.equals(team2Score))
				bet.setX(true);
			else
				bet.setP2(true);			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		return bet;		
	}
	
}
