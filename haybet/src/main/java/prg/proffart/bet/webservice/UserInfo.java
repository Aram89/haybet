package prg.proffart.bet.webservice;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.proffart.bet.domain.User;


public class UserInfo {

	@Path("/getinfo")
	@GET
	public User getUserInfo(){
		User user = new User();
		user.setBalance((double) 100);
		user.setEmail("aramkirakosyan89@gmail.com");
		user.setNickName("Aram89");
		user.setId(1);
		System.out.println(user.getEmail());
		return user;		
	}
}
