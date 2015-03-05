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
	
	@Column(name="user_id")
	private int userID;
	
	@Column(name="betGroupID")
	private int betGroupID;
	
	@Column(name="type")
	private String type;
	
	@Column(name="type_s")
	private String typeS;
	
	@Column(name="coefficient")
	private double coefficient;

	@Column(name="is_done")
	private Boolean isDone;
	
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

	public int getBetGroupID() {
		return betGroupID;
	}

	public void setBetGroupID(int betGroupID) {
		this.betGroupID = betGroupID;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTypeS() {
		return typeS;
	}

	public void setTypeS(String typeS) {
		this.typeS = typeS;
	}

	public double getCoefficient() {
		return coefficient;
	}

	public void setCoefficient(double coefficient) {
		this.coefficient = coefficient;
	}

	public Boolean getIsDone() {
		return isDone;
	}

	public void setIsDone(Boolean isDone) {
		this.isDone = isDone;
	}



}
