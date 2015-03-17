package org.proffart.bet.service;

import javax.transaction.Transactional;

import org.proffart.bet.dao.UserDAO;
import org.proffart.bet.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Transactional
@Service
public class UserService {
	@Autowired
	UserDAO dao;

	public boolean checkCredentials(String userName, String password){
		String pass = dao.getPassword(userName);
		if (pass!= null && !pass.isEmpty() && pass.equals(password)) {
			return true;
		}
		return false;
	}
	
	public void saveUser(User user){
		dao.addUser(user);
	}
	public User getUserByNickName(String nickName) {
		return dao.getUsreByNickName(nickName);
	}
}
