package org.proffart.bet.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="country")
public class Country implements Serializable{
	
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

}
