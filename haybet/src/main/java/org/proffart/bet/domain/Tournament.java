package org.proffart.bet.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="tournament")
public class Tournament implements Serializable {
	
	@Id 
	@GeneratedValue
	@Column(name="id")
	private int id;
	
	@Column(name="name_en")
	private String nameEn; 
	
	@Column(name="name_am")
	private String nameAm; 
	
	@Column(name="name_ru")
	private String nameRu;
	
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
	
	public void setNameEn(String nameEn){
		this.nameEn = nameEn;
	}
	
	public String getNameEn(){
		return nameEn;
	}
	
	public void setNameRu(String nameRu){
		this.nameRu = nameRu;
	}
	
	public String getName_ru(){
		return nameRu;
	}
	
	public void setNameAm(String nameAm){
		this.nameAm = nameAm;
	}
	
	public String getNameAm(){
		return nameAm;
	}
	
	public void setTotoID(int totoID){
		this.totoID = totoID;
	}
	
	public int getTotoID(){
		return totoID;
	}
	
	
    public void setCountryID(int countryID){
		this.countryID = countryTotoID;
	}
	
	public int getCountryId(){
		return countryID;
	}
	
	public void setCountryTotoID(int countryTotoID){
		this.countryTotoID = countryTotoID;
	}
	
	public int getCountryTotoId(){
		return countryTotoID;
	}
}
