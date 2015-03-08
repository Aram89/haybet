package org.proffart.bet.service;

import org.proffart.bet.domain.Betting;
import org.proffart.bet.domain.Result;

public class ResultService {

	public Betting parseResult(Result result){
		Betting bet = new Betting();
		String score = result.getScore();
		try{
			String[] scores = score.split(":");
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
