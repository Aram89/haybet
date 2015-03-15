package org.proffart.bet.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bet_group")
public class BetGroup implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="id")
	private int ID;
	@Column(name="user_id")
	private int userID;
	@Column(name="amount")
	private double amount;
	@Column(name="coefficient")
	private double coefficient;
	@Column(name="bets_count")
	private int betsCount;
	@Column(name="finished_bets_count")
	private int finishedBetsCount;
	@Column(name="status")
	private String status;
	
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
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public double getCoefficient() {
		return coefficient;
	}
	public void setCoefficient(double coefficient) {
		this.coefficient = coefficient;
	}
	public int getBetsCount() {
		return betsCount;
	}
	public void setBetsCount(int betsCount) {
		this.betsCount = betsCount;
	}
	public int getFinishedBetsCount() {
		return finishedBetsCount;
	}
	public void setFinishedBetsCount(int finishedBetsCount) {
		this.finishedBetsCount = finishedBetsCount;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	

}
