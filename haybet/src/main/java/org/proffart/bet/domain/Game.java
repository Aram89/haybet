package org.proffart.bet.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="game")
public class Game {
	
	@Id
	@Column(name="id")
	private int id;
	
	@Column(name="tournament_id")
	private int tournamentID;
	
	@Column(name="hash")
	private String hash;
	@Column(name="u_string")
	private String uString;
	
	@Column(name="name_en")
	private String nameEN;
	
	@Column(name="name_am")
	private String nameAM;
	
	@Column(name="name_ru")
	private String nameRU;
	
	@Column(name="date")
	private String date;
	
	
	@Column(name="t_p1")
	private double t_p1;
	@Column(name="t_p2")
	private double t_p2;
	@Column(name="t_x")
	private double t_x;
	@Column(name="t_1x")
	private double t_1x;
	@Column(name="t_12")
	private double t_12;
	@Column(name="t_x2")
	private double t_x2;
	
	@Column(name="t_b_05")
	private double t_b_05;
	@Column(name="t_b_15")
	private double t_b_15;
	@Column(name="t_b_25")
	private double t_b_25;
	@Column(name="t_b_35")
	private double t_b_35;
	@Column(name="t_b_45")
	private double t_b_45;
	@Column(name="t_b_55")
	private double t_b_55;
	
	@Column(name="t_m_05")
	private double t_m_05;
	@Column(name="t_m_15")
	private double t_m_15;
	@Column(name="t_m_25")
	private double t_m_25;
	@Column(name="t_m_35")
	private double t_m_35;
	@Column(name="t_m_45")
	private double t_m_45;
	@Column(name="t_m_55")
	private double t_m_55;
	
	@Column(name="t_b1_05")
	private double t_b1_05;
	@Column(name="t_b1_15")
	private double t_b1_15;
	@Column(name="t_b1_25")
	private double t_b1_25;
	@Column(name="t_b1_35")
	private double t_b1_35;
	@Column(name="t_b1_45")
	private double t_b1_45;
	@Column(name="t_b1_55")
	private double t_b1_55;
	
	@Column(name="t_m1_05")
	private double t_m1_05;
	@Column(name="t_m1_15")
	private double t_m1_15;
	@Column(name="t_m1_25")
	private double t_m1_25;
	@Column(name="t_m1_35")
	private double t_m1_35;
	@Column(name="t_m1_45")
	private double t_m1_45;
	@Column(name="t_m1_55")
	private double t_m1_55;
	
	@Column(name="t_b2_05")
	private double t_b2_05;
	@Column(name="t_b2_15")
	private double t_b2_15;
	@Column(name="t_b2_25")
	private double t_b2_25;
	@Column(name="t_b2_35")
	private double t_b2_35;
	@Column(name="t_b2_45")
	private double t_b2_45;
	@Column(name="t_b2_55")
	private double t_b2_55;
	
	@Column(name="t_m2_05")
	private double t_m2_05;
	@Column(name="t_m2_15")
	private double t_m2_15;
	@Column(name="t_m2_25")
	private double t_m2_25;
	@Column(name="t_m2_35")
	private double t_m2_35;
	@Column(name="t_m2_45")
	private double t_m2_45;
	@Column(name="t_m2_55")
	private double t_m2_55;
	
	@Column(name="t_t1_s_yes")
	private double t_t1_s_yes;
	@Column(name="t_t1_s_no")
	private double t_t1_s_no;
	@Column(name="t_t2_s_yes")
	private double t_t2_s_yes;
	@Column(name="t_t2_s_no")
	private double t_t2_s_no;
	@Column(name="t_s_yes")
	private double t_s_yes;
	@Column(name="t_s_no")
	private double t_s_no;
	
	@Column(name="_x_totobet_id")
	private int totoID;
	
	@Column(name="_x_tournament_totobet_id")
	private int tournamentTotoID;

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

	public String getHash() {
		return hash;
	}

	public void setHash(String hash) {
		this.hash = hash;
	}

	public String getuString() {
		return uString;
	}

	public void setuString(String uString) {
		this.uString = uString;
	}

	public String getNameEN() {
		return nameEN;
	}

	public void setNameEN(String nameEN) {
		this.nameEN = nameEN;
	}

	public String getNameAM() {
		return nameAM;
	}

	public void setNameAM(String nameAM) {
		this.nameAM = nameAM;
	}

	public String getNameRU() {
		return nameRU;
	}

	public void setNameRU(String nameRU) {
		this.nameRU = nameRU;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public double getT_p1() {
		return t_p1;
	}

	public void setT_p1(double t_p1) {
		this.t_p1 = t_p1;
	}

	public double getT_p2() {
		return t_p2;
	}

	public void setT_p2(double t_p2) {
		this.t_p2 = t_p2;
	}

	public double getT_x() {
		return t_x;
	}

	public void setT_x(double t_x) {
		this.t_x = t_x;
	}

	public double getT_1x() {
		return t_1x;
	}

	public void setT_1x(double t_1x) {
		this.t_1x = t_1x;
	}

	public double getT_12() {
		return t_12;
	}

	public void setT_12(double t_12) {
		this.t_12 = t_12;
	}

	public double getT_x2() {
		return t_x2;
	}

	public void setT_x2(double t_x2) {
		this.t_x2 = t_x2;
	}

	public double getT_b_05() {
		return t_b_05;
	}

	public void setT_b_05(double t_b_05) {
		this.t_b_05 = t_b_05;
	}

	public double getT_b_15() {
		return t_b_15;
	}

	public void setT_b_15(double t_b_15) {
		this.t_b_15 = t_b_15;
	}

	public double getT_b_25() {
		return t_b_25;
	}

	public void setT_b_25(double t_b_25) {
		this.t_b_25 = t_b_25;
	}

	public double getT_b_35() {
		return t_b_35;
	}

	public void setT_b_35(double t_b_35) {
		this.t_b_35 = t_b_35;
	}

	public double getT_b_45() {
		return t_b_45;
	}

	public void setT_b_45(double t_b_45) {
		this.t_b_45 = t_b_45;
	}

	public double getT_b_55() {
		return t_b_55;
	}

	public void setT_b_55(double t_b_55) {
		this.t_b_55 = t_b_55;
	}

	public double getT_m_05() {
		return t_m_05;
	}

	public void setT_m_05(double t_m_05) {
		this.t_m_05 = t_m_05;
	}

	public double getT_m_15() {
		return t_m_15;
	}

	public void setT_m_15(double t_m_15) {
		this.t_m_15 = t_m_15;
	}

	public double getT_m_25() {
		return t_m_25;
	}

	public void setT_m_25(double t_m_25) {
		this.t_m_25 = t_m_25;
	}

	public double getT_m_35() {
		return t_m_35;
	}

	public void setT_m_35(double t_m_35) {
		this.t_m_35 = t_m_35;
	}

	public double getT_m_45() {
		return t_m_45;
	}

	public void setT_m_45(double t_m_45) {
		this.t_m_45 = t_m_45;
	}

	public double getT_m_55() {
		return t_m_55;
	}

	public void setT_m_55(double t_m_55) {
		this.t_m_55 = t_m_55;
	}

	public double getT_b1_05() {
		return t_b1_05;
	}

	public void setT_b1_05(double t_b1_05) {
		this.t_b1_05 = t_b1_05;
	}

	public double getT_b1_15() {
		return t_b1_15;
	}

	public void setT_b1_15(double t_b1_15) {
		this.t_b1_15 = t_b1_15;
	}

	public double getT_b1_25() {
		return t_b1_25;
	}

	public void setT_b1_25(double t_b1_25) {
		this.t_b1_25 = t_b1_25;
	}

	public double getT_b1_35() {
		return t_b1_35;
	}

	public void setT_b1_35(double t_b1_35) {
		this.t_b1_35 = t_b1_35;
	}

	public double getT_b1_45() {
		return t_b1_45;
	}

	public void setT_b1_45(double t_b1_45) {
		this.t_b1_45 = t_b1_45;
	}

	public double getT_b1_55() {
		return t_b1_55;
	}

	public void setT_b1_55(double t_b1_55) {
		this.t_b1_55 = t_b1_55;
	}

	public double getT_m1_05() {
		return t_m1_05;
	}

	public void setT_m1_05(double t_m1_05) {
		this.t_m1_05 = t_m1_05;
	}

	public double getT_m1_15() {
		return t_m1_15;
	}

	public void setT_m1_15(double t_m1_15) {
		this.t_m1_15 = t_m1_15;
	}

	public double getT_m1_25() {
		return t_m1_25;
	}

	public void setT_m1_25(double t_m1_25) {
		this.t_m1_25 = t_m1_25;
	}

	public double getT_m1_35() {
		return t_m1_35;
	}

	public void setT_m1_35(double t_m1_35) {
		this.t_m1_35 = t_m1_35;
	}

	public double getT_m1_45() {
		return t_m1_45;
	}

	public void setT_m1_45(double t_m1_45) {
		this.t_m1_45 = t_m1_45;
	}

	public double getT_m1_55() {
		return t_m1_55;
	}

	public void setT_m1_55(double t_m1_55) {
		this.t_m1_55 = t_m1_55;
	}

	public double getT_b2_05() {
		return t_b2_05;
	}

	public void setT_b2_05(double t_b2_05) {
		this.t_b2_05 = t_b2_05;
	}

	public double getT_b2_15() {
		return t_b2_15;
	}

	public void setT_b2_15(double t_b2_15) {
		this.t_b2_15 = t_b2_15;
	}

	public double getT_b2_25() {
		return t_b2_25;
	}

	public void setT_b2_25(double t_b2_25) {
		this.t_b2_25 = t_b2_25;
	}

	public double getT_b2_35() {
		return t_b2_35;
	}

	public void setT_b2_35(double t_b2_35) {
		this.t_b2_35 = t_b2_35;
	}

	public double getT_b2_45() {
		return t_b2_45;
	}

	public void setT_b2_45(double t_b2_45) {
		this.t_b2_45 = t_b2_45;
	}

	public double getT_b2_55() {
		return t_b2_55;
	}

	public void setT_b2_55(double t_b2_55) {
		this.t_b2_55 = t_b2_55;
	}

	public double getT_m2_05() {
		return t_m2_05;
	}

	public void setT_m2_05(double t_m2_05) {
		this.t_m2_05 = t_m2_05;
	}

	public double getT_m2_15() {
		return t_m2_15;
	}

	public void setT_m2_15(double t_m2_15) {
		this.t_m2_15 = t_m2_15;
	}

	public double getT_m2_25() {
		return t_m2_25;
	}

	public void setT_m2_25(double t_m2_25) {
		this.t_m2_25 = t_m2_25;
	}

	public double getT_m2_35() {
		return t_m2_35;
	}

	public void setT_m2_35(double t_m2_35) {
		this.t_m2_35 = t_m2_35;
	}

	public double getT_m2_45() {
		return t_m2_45;
	}

	public void setT_m2_45(double t_m2_45) {
		this.t_m2_45 = t_m2_45;
	}

	public double getT_m2_55() {
		return t_m2_55;
	}

	public void setT_m2_55(double t_m2_55) {
		this.t_m2_55 = t_m2_55;
	}

	public double getT_t1_s_yes() {
		return t_t1_s_yes;
	}

	public void setT_t1_s_yes(double t_t1_s_yes) {
		this.t_t1_s_yes = t_t1_s_yes;
	}

	public double getT_t1_s_no() {
		return t_t1_s_no;
	}

	public void setT_t1_s_no(double t_t1_s_no) {
		this.t_t1_s_no = t_t1_s_no;
	}

	public double getT_t2_s_yes() {
		return t_t2_s_yes;
	}

	public void setT_t2_s_yes(double t_t2_s_yes) {
		this.t_t2_s_yes = t_t2_s_yes;
	}

	public double getT_t2_s_no() {
		return t_t2_s_no;
	}

	public void setT_t2_s_no(double t_t2_s_no) {
		this.t_t2_s_no = t_t2_s_no;
	}

	public double getT_s_yes() {
		return t_s_yes;
	}

	public void setT_s_yes(double t_s_yes) {
		this.t_s_yes = t_s_yes;
	}

	public double getT_s_no() {
		return t_s_no;
	}

	public void setT_s_no(double t_s_no) {
		this.t_s_no = t_s_no;
	}

	public int getTotoID() {
		return totoID;
	}

	public void setTotoID(int totoID) {
		this.totoID = totoID;
		this.id = this.totoID;
	}

	public int getTournamentTotoID() {
		return tournamentTotoID;
	}

	public void setTournamentTotoID(int tournamentTotoID) {
		this.tournamentTotoID = tournamentTotoID;
		this.tournamentID = this.tournamentTotoID;
	}	
	
	@Override
	public int hashCode(){
		return id;		
	}
	
	@Override
	public boolean equals (Object obj){
		if(!(obj instanceof Game))
			return false;
		if (obj == this)
			return true;
		Game rhs = (Game) obj;
		if (this.id == rhs.id && this.hash.equals(rhs.hash))
			return true;
		return false;		
	}


}
