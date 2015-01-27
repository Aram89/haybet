package org.proffart.bet.dao;

import java.util.List;

import org.proffart.bet.domain.User;

public interface UserDAO {
	public void addUser(User user);
	public String getPassword(String userName);
	public void deleteUser(Integer id);
	public List<User> getUsers();

}
