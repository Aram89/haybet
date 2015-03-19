package org.proffart.bet.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.transaction.Transactional;

import org.proffart.bet.dao.ResultDAO;
import org.proffart.bet.domain.Bet;
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

    @Autowired
    BetService betService;
		
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
			int team2Score = Integer.parseInt(scores[1].substring(0,1));
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
	
	public List<Result> saveResults (List <TmpResult> tmpResults){
		Map <String, Integer> games = service.getGamesByDate();
        List <Result> results = new ArrayList<Result>();
        int count = 0;
		for (TmpResult res : tmpResults){
            ++count;
			String key = res.getuString();
			if (games.containsKey(key)){
				Result result = new Result();
				result.setGameID(games.get(key));
				result.setDate(res.getDateTime());
				result.setScore(res.getGameResult());
				dao.saveResult(result);
                results.add(result);
			}
            if (count == 1){
                break;
            }
		}
        calculateResults(results);
        return results;
	}

    public void calculateResults (List<Result> results){
        Map <Integer, Bet> bets = betService.getBets();
        Betting betting = null;
        Bet bet = new Bet();
        Boolean status = null;
        for (Result result : results){
            betting = parseResult(result);
            if (bets.containsKey(result.getGameID())){
                bet = bets.get(result.getGameID());
            }
            String betType = bet.getBetType();
            status = (Boolean)ReflectUtils.callGetter(betType, betting);
            if (status){

            }
        }
    }
}
