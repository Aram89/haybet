package org.proffart.bet.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

import org.springframework.context.annotation.Scope;

@XmlRootElement
@Entity
@Table(name="users")
@Scope("session")
public class User {
		
	@Id
	@Column(name="id")
	@GeneratedValue
	private Integer id;
	
	@Column(name="nick_name")
	@Size (min=5, max=10, message="vat es gyada?")
	@NotNull
	private String nickName;
	
	@Column(name="email")
	@NotNull
	private String email;
	
	@Column(name="password")
	@NotNull
	private String password;
	
	
	@Column(name="balance")
	//Setting 0 balance for new users
	private Double balance = (double) 0;
	
	@Column(name="role")
	private String role = "user";
	
	@Column(name="enabled")
	private boolean enabled = true;
	
	public String getEmail(){
		return email;
	}
	
	public void setEmail(String email){
		this.email = email;
	}
	
	public String getNickName(){
		return nickName;
	}
	
	public void setNickName(String nickName){
		this.nickName = nickName;
	}
	
	public String getPassword(){
		return password;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
	
	public Double getBalance(){
		return balance;
	}
	
	public void setBalance(Double balance){
		this.balance = balance;
	}
	
	
	public Integer getId(){
		return id;
	}
	
	public void setId(int id){
		this.id = id;
	}

}
