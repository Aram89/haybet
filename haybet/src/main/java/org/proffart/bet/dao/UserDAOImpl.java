package org.proffart.bet.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.proffart.bet.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository 
public class UserDAOImpl extends AbstractDAO implements UserDAO {
	
	/*@Autowired
	private SessionFactory sessionFactory;*/

	
	public void addUser(User user) {
		getSession().save(user);
		//persist(user);		
	}

	public void deleteUser(Integer id) {
		
	}

	@SuppressWarnings("unchecked")
	public List<User> getUsers() {
		return (List<User>) getSession().createQuery("FROM users").list();
	}

	public String getPassword(String userName) {
		String hql = "SELECT password FROM org.proffart.bet.domain.User where nickName='gyada'";
		Query query = getSession().createQuery(hql);
		@SuppressWarnings("rawtypes")
		List results = query.list();
		String pass = results.get(0).toString();
		return pass;
	}

}
