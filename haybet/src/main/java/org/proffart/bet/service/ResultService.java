package org.proffart.bet.service;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.proffart.bet.dao.ResultDAO;
import org.proffart.bet.domain.Betting;
import org.proffart.bet.domain.Result;
import org.proffart.bet.domain.TmpResult;
import org.proffart.bet.utils.ReflectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class ResultService {
	
	@Autowired
	ResultDAO dao;
	
	@Autowired
	GameService service;
		
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
			ReflectUtils.callSetters(bet, 1, team1Score, true);
			ReflectUtils.callSetters(bet, 2, team2Score, true);
			ReflectUtils.callSetters(bet, 0, sum, true);			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		return bet;		
	}
	
	public void saveResults (List <TmpResult> tmpResults){
		Map <String, Integer> games = service.getGamesByDate();
		for (TmpResult res : tmpResults){
			String key = res.getuString();
			if (games.containsKey(key)){
				Result result = new Result();
				result.setGameID(games.get(key));
				result.setDate(res.getDateTime());
				result.setScore(res.getGameResult());
				dao.saveResult(result);
			}
		}		
	}
}
