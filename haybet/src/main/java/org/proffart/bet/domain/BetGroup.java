package org.proffart.bet.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bet_group")
public class BetGroup implements Serializable{
	
	@Id
	@Column(name="id")
	private int ID;
		
	@Column(name="user_id")
	private int userID;
	
	@Column(name="bet_count")
	private int betCounter;
	
	@Column(name="done_bet_count")
	private int doneBetCounter;
	
	@Column(name="is_done")
	private Boolean isDone;
	
	@Column(name="coefficient")
	private double coefficient;
	
	@Column(name="bet")
	private double bet;

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public int getBetCounter() {
		return betCounter;
	}

	public void setBetCounter(int betCounter) {
		this.betCounter = betCounter;
	}

	public int getDoneBetCounter() {
		return doneBetCounter;
	}

	public void setDoneBetCounter(int doneBetCounter) {
		this.doneBetCounter = doneBetCounter;
	}

	public Boolean getIsDone() {
		return isDone;
	}

	public void setIsDone(Boolean isDone) {
		this.isDone = isDone;
	}

	public double getCoefficient() {
		return coefficient;
	}

	public void setCoefficient(double coefficient) {
		this.coefficient = coefficient;
	}

	public double getBet() {
		return bet;
	}

	public void setBet(double bet) {
		this.bet = bet;
	}
	

}
