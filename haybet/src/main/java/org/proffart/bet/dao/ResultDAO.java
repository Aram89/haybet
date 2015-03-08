package org.proffart.bet.dao;

import java.util.List;

import org.proffart.bet.domain.Result;

public interface ResultDAO {
	public void saveResult(Result result);
	public void saveResults(List<Result> results);

}
