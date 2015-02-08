package org.proffart.bet.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="game")
public class Game {
	
	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	
	@Column(name="tournament_id")
	private int tournamentID;
	
	@Column(name="name_en")
	private String nameEn;
	
	@Column(name="name_am")
	private String nameAm;
	
	@Column(name="name_ru")
	private String nameRu;
	
	@Column(name="date")
	private Date date;
	
	@Column(name="p1")
	private double p1;
	
	@Column(name="p2")
	private double p2;
	
	@Column(name="x")
	private double x;
	
	@Column(name="x1")
	private double x1;
	
	@Column(name="x2")
	private double x2;
	
	@Column(name="x12")
	private double x12;
	
	@Column(name="f1")
	private double f1;
	
	@Column(name="f1_s")
	private double f1_s;
	
	@Column(name="f2")
	private double f2;
	
	@Column(name="f2_s")
	private double f2_s;
	
	@Column(name="b")
	private double b;
	
	@Column(name="b_S")
	private double b_s;
	
	@Column(name="m")
	private double m;
	
	@Column(name="m_S")
	private double m_s;
	
	@Column(name="b1")
	private double b1;
	
	@Column(name="b1_s")
	private double b1_S;
	
	@Column(name="b2_s")
	private double b2_s;
	
	@Column(name="m1")
	private double m1;
	
	@Column(name="m1_s")
	private double m1_s;
	
	@Column(name="m2")
	private double m2;
	
	@Column(name="m2_s")
	private double m2_s;
	
	@Column(name="_x_totobet_id")
	private int totID;
	
	@Column(name="_x_tournament_totobet_id")
	private int tournamentTotoID;	
	
	@Column(name="hash")
	private String hash;
	
	public String getHash() {
		return hash;
	}

	public void setHash(String hash) {
		this.hash = hash;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTournamentID() {
		return tournamentID;
	}

	public void setTournamentID(int tournamentID) {
		this.tournamentID = tournamentID;
	}

	public String getNameEn() {
		return nameEn;
	}

	public void setNameEn(String nameEn) {
		this.nameEn = nameEn;
	}

	public String getNameAm() {
		return nameAm;
	}

	public void setNameAm(String nameAm) {
		this.nameAm = nameAm;
	}

	public String getNameRu() {
		return nameRu;
	}

	public void setNameRu(String nameRu) {
		this.nameRu = nameRu;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public double getP1() {
		return p1;
	}

	public void setP1(double p1) {
		this.p1 = p1;
	}

	public double getP2() {
		return p2;
	}

	public void setP2(double p2) {
		this.p2 = p2;
	}

	public double getX() {
		return x;
	}

	public void setX(double x) {
		this.x = x;
	}

	public double getX1() {
		return x1;
	}

	public void setX1(double x1) {
		this.x1 = x1;
	}

	public double getX2() {
		return x2;
	}

	public void setX2(double x2) {
		this.x2 = x2;
	}

	public double getX12() {
		return x12;
	}

	public void setX12(double x12) {
		this.x12 = x12;
	}

	public double getF1() {
		return f1;
	}

	public void setF1(double f1) {
		this.f1 = f1;
	}

	public double getF1_s() {
		return f1_s;
	}

	public void setF1_s(double f1_s) {
		this.f1_s = f1_s;
	}

	public double getF2() {
		return f2;
	}

	public void setF2(double f2) {
		this.f2 = f2;
	}

	public double getF2_s() {
		return f2_s;
	}

	public void setF2_s(double f2_s) {
		this.f2_s = f2_s;
	}

	public double getB() {
		return b;
	}

	public void setB(double b) {
		this.b = b;
	}

	public double getB_s() {
		return b_s;
	}

	public void setB_s(double b_s) {
		this.b_s = b_s;
	}

	public double getM() {
		return m;
	}

	public void setM(double m) {
		this.m = m;
	}

	public double getM_s() {
		return m_s;
	}

	public void setM_s(double m_s) {
		this.m_s = m_s;
	}

	public double getB1() {
		return b1;
	}

	public void setB1(double b1) {
		this.b1 = b1;
	}

	public double getB1_S() {
		return b1_S;
	}

	public void setB1_S(double b1_S) {
		this.b1_S = b1_S;
	}

	public double getB2_s() {
		return b2_s;
	}

	public void setB2_s(double b2_s) {
		this.b2_s = b2_s;
	}

	public double getM1() {
		return m1;
	}

	public void setM1(double m1) {
		this.m1 = m1;
	}

	public double getM1_s() {
		return m1_s;
	}

	public void setM1_s(double m1_s) {
		this.m1_s = m1_s;
	}

	public double getM2() {
		return m2;
	}

	public void setM2(double m2) {
		this.m2 = m2;
	}

	public double getM2_s() {
		return m2_s;
	}

	public void setM2_s(double m2_s) {
		this.m2_s = m2_s;
	}

	public int getTotID() {
		return totID;
	}

	public void setTotID(int totID) {
		this.totID = totID;
	}

	public int getTournamentTotoID() {
		return tournamentTotoID;
	}

	public void setTournamentTotoID(int tournamentTotoID) {
		this.tournamentTotoID = tournamentTotoID;
	}		
}
