package org.proffart.bet.service;

import java.util.List;

import org.proffart.bet.dao.ResultDAO;
import org.proffart.bet.domain.Betting;
import org.proffart.bet.domain.Result;
import org.springframework.beans.factory.annotation.Autowired;

public class ResultService {
	
	@Autowired
	ResultDAO dao;
	
	public void addResult(Result result){
		dao.saveResult(result);
	}
	
	public void addResults(List<Result> results){
		dao.saveResults(results);
	}  

	public Betting parseResult(Result result){
		Betting bet = new Betting();
		String score = result.getScore();
		try{
			String[] scores = score.split(":");
			int team1Score = Integer.parseInt(scores[0]);
			int team2Score = Integer.parseInt(scores[1]);
			int sum = team1Score + team2Score;
			if (team1Score > team2Score){
				bet.setT_p1(true);
				bet.setT_1x(true);
				bet.setT_12(true);
			}				
			else if (team1Score == team2Score){
				bet.setT_x(true);
				bet.setT_1x(true);
				bet.setT_x2(true);
			}			
			else{
				bet.setT_p2(true);
				bet.setT_12(true);
				bet.setT_x2(true);
			}
			
			
			switch (sum) {
			case 0:
				bet.setT_m_05(true);
				bet.setT_m_15(true);
				bet.setT_m_25(true);
				bet.setT_m_35(true);
				bet.setT_m_45(true);
				bet.setT_m_55(true);				
				break;
			case 1:
				bet.setT_b_05(true);
				bet.setT_m_15(true);
				bet.setT_m_25(true);
				bet.setT_m_35(true);
				bet.setT_m_45(true);
				bet.setT_m_55(true);				
				break;
			case 2:
				bet.setT_b_05(true);
				bet.setT_b_15(true);
				bet.setT_m_25(true);
				bet.setT_m_35(true);
				bet.setT_m_45(true);
				bet.setT_m_55(true);		
				break;
			case 3:
				bet.setT_b_05(true);
				bet.setT_b_15(true);
				bet.setT_b_25(true);
				bet.setT_m_35(true);
				bet.setT_m_45(true);
				bet.setT_m_55(true);		
				break;
			case 4:
				bet.setT_b_05(true);
				bet.setT_b_15(true);
				bet.setT_b_25(true);
				bet.setT_b_35(true);
				bet.setT_m_45(true);
				bet.setT_m_55(true);		
				break;
			case 5:
				bet.setT_b_05(true);
				bet.setT_b_15(true);
				bet.setT_b_25(true);
				bet.setT_b_35(true);
				bet.setT_b_45(true);
				bet.setT_m_55(true);				
				break;
			case 6:
				bet.setT_b_05(true);
				bet.setT_b_15(true);
				bet.setT_b_25(true);
				bet.setT_b_35(true);
				bet.setT_b_45(true);
				bet.setT_b_55(true);
				break;				
			default:
				break;
			}			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		return bet;		
	}
	
}
