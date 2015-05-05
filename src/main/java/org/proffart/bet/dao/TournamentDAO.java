package org.proffart.bet.dao;

import java.util.List;

import org.proffart.bet.domain.Tournament;

public interface TournamentDAO {
	public void addTournament(Tournament tournament);
	public void addTournaments(List<Tournament> tournaments);
	public List<Tournament> getTournaments();	
}
