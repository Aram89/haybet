package org.proffart.bet.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tournament")
public class Tournament implements Serializable {
	
	@Id 
	@Column(name="id")
	private int id;
	
	@Column(name="name_en")
	private String nameEN; 
	
	@Column(name="name_am")
	private String nameAM; 
	
	@Column(name="name_ru")
	private String nameRU;
	
	@Column(name="_x_totobet_id")
	private int totoID;
		
	@Column(name="country_id")
	private int countryID;

	@Column(name="_x_country_totobet_id")
	private int countryTotoID;
	
	public void setId(int id){
		this.id = id;		
	}
	
	public int getId(){
		return id;
	}
	
	public void setNameEN(String nameEN){
		this.nameEN = nameEN;
	}
	
	public String getNameEN(){
		return nameEN;
	}
	
	public void setNameRU(String nameRU){
		this.nameRU = nameRU;
	}
	
	public String getNameRU(){
		return nameRU;
	}
	
	public void setNameAM(String nameAM){
		this.nameAM = nameAM;
	}
	
	public String getNameAM(){
		return nameAM;
	}
	
	public void setTotoID(int totoID){
		this.totoID = totoID;
		this.id = totoID;
	}
	
	public int getTotoID(){
		return totoID;
	}
	
	
    public void setCountryID(int countryID){
		this.countryID = countryID;
	}
	
	public int getCountryId(){
		return countryID;
	}
	
	public void setCountryTotoID(int countryTotoID){
		this.countryTotoID = countryTotoID;
		this.countryID = countryTotoID;
	}
	
	public int getCountryTotoId(){
		return countryTotoID;
	}
}
