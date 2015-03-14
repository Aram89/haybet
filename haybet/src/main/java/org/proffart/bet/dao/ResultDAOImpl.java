package org.proffart.bet.dao;

import java.util.List;

import org.proffart.bet.domain.Result;

public class ResultDAOImpl extends AbstractDAO implements ResultDAO {

	public void saveResult(Result result) {
		persist(result);		
	}

	public void saveResults(List<Result> results) {
		for(Result result : results){
			saveResult(result);
		}		
	}
}
