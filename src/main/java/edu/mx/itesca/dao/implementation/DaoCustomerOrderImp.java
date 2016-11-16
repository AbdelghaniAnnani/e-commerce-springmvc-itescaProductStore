package edu.mx.itesca.dao.implementation;

import edu.mx.itesca.dao.Dao_CustomerOrder;
import edu.mx.itesca.model.CustomerOrder;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Entity;

/**
 * Created by dario on 10/11/2016.
 */
@Repository
@Transactional
public class DaoCustomerOrderImp implements Dao_CustomerOrder {

    @Autowired
    private SessionFactory sessionFactory;

    public void addCustomerOrder(CustomerOrder customerOrder) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(customerOrder);
        session.flush();
    }

}
