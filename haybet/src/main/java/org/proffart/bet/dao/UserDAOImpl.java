package org.proffart.bet.dao;

import java.util.List;

import org.hibernate.Query;
import org.proffart.bet.domain.User;
import org.springframework.stereotype.Repository;

@Repository 
public class UserDAOImpl extends AbstractDAO implements UserDAO {
	
	public void addUser(User user) {
		getSession().save(user);
	}

	public void deleteUser(Integer id) {
		
	}

	@SuppressWarnings("unchecked")
	public List<User> getUsers() {
		return (List<User>) getSession().createQuery("FROM users").list();
	}

	public String getPassword(String userName) {
		String hql = "SELECT password FROM org.proffart.bet.domain.User where nickName = :nickName";
		Query query = getSession().createQuery(hql);
		query.setString("nickName", userName);
		@SuppressWarnings("rawtypes")
		List results = query.list();
		String pass = results.get(0).toString();
		return pass;
	}
	public User getUserByNickName(String nickName) {
		String hql = "SELECT u FROM org.proffart.bet.domain.User u WHERE u.nickName = :nickName";
		Query  query = getSession().createQuery(hql);
		query.setString("nickName", nickName);
		return (User) query.uniqueResult();
	}

}
