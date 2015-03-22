package org.proffart.bet.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cache.spi.TransactionalDataRegion;
import org.springframework.beans.factory.annotation.Autowired;

import javax.transaction.Transaction;
import java.util.Map;
import org.hibernate.*;


public class AbstractDAO {
	 @Autowired
	 private SessionFactory sessionFactory;
	
	 protected Session getSession(){
        return sessionFactory.getCurrentSession();
    }
	
	 public void persist(Object entity) {
        getSession().persist(entity);
    }

    public void saveOrUpdate (Object entity){
        getSession().saveOrUpdate(entity);
    }

    public void update (String hqlUpdate, Map<String, Object> params){
        Session session = sessionFactory.openSession();
        org.hibernate.Transaction tx = null;
        try{
            tx = session.beginTransaction();
            Query query = session.createQuery(hqlUpdate);
            for (Map.Entry<String, Object> entry : params.entrySet()){
                query.setParameter(entry.getKey(),entry.getValue());
            }
            query.executeUpdate();
            tx.commit();
        }
        catch (Exception e){
            if (tx != null) tx.rollback();
            //TODO
        }
        finally {
            session.close();
        }
    }

}
