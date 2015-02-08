package org.proffart.bet.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="country")
public class Country implements Serializable{
	
	@Id 
	@GeneratedValue
	@Column(name="id")
	private int id;
		
	@Column(name="name_en")
	private String nameEn; 
	
	@Column(name="name_am")
	private String nameAm; 
	
	@Column(name="name_ru")
	private String name_ru;
	
	@Column(name="_x_totobet_id")
	private int totoID;
	
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
	
	public void setName_ru(String nameRu){
		this.name_ru = nameRu;
	}
	
	public String getName_ru(){
		return name_ru;
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

}
