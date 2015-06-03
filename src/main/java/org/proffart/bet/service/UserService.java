package org.proffart.bet.service;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.proffart.bet.dao.UserDAO;
import org.proffart.bet.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

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
		return dao.getUserByNickName(nickName);
	}
	public void debit(User user, double balance) {
		balance = user.getBalance() - balance;
		if(balance < 0) balance = 0;
		user.setBalance(balance);
		dao.updateBalance(user.getId(), user.getBalance());
	}
	public void credit(User user, double balance) {
		balance = user.getBalance() + balance;
		user.setBalance(balance);
		dao.updateBalance(user.getId(), user.getBalance());
	}
	public static User getGuest() {
		User guest = new User();
		guest.setRole(UserDAO.GUEST);
		return guest; 
	}
	public static User getCurrentUser() {
		User user;
		try {
			ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
			HttpSession session = attr.getRequest().getSession(true);
			user = (User) session.getAttribute("userobj");
			if(user == null || user.getRole() == null) {
				user = getGuest();
			}
		} catch(Exception e) {
			user = getGuest();
		}
		return user;
	}
	public static Boolean isLogined() {
		Boolean isLogined = getCurrentUser().getRole() != UserDAO.GUEST;
		return isLogined;
	}
	 
	
}
