package org.proffart.bet.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bet")
public class Bet implements Serializable{
	
	@Id
	@Column(name="id")
	private int ID;
	@Column(name="bet_group_id")
	private double betGroupID;
	@Column(name="game_id")
	private int gameID;
	@Column(name="bet_type")
	private String betType;
	@Column(name="is_finished")
	private boolean isFinished;
	@Column(name="status")
	private String status;
	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public double getBetGroupID() {
		return betGroupID;
	}
	public void setBetGroupID(double betGroupID) {
		this.betGroupID = betGroupID;
	}
	public int getGameID() {
		return gameID;
	}
	public void setGameID(int gameID) {
		this.gameID = gameID;
	}
	public String getBetType() {
		return betType;
	}
	public void setBetType(String betType) {
		this.betType = betType;
	}
	public boolean getIsFinished() {
		return isFinished;
	}
	public void setIsFinished(boolean isFinished) {
		this.isFinished = isFinished;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	

}
