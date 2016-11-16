package edu.mx.itesca.dao.implementation;

import edu.mx.itesca.dao.Dao_Cart;
import edu.mx.itesca.model.Cart;
import edu.mx.itesca.services.CustomerOrderService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;


/**
 * Created by dario on 26/10/2016.
 */
@Repository
@Transactional
public class DaoCartImp implements Dao_Cart {

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private CustomerOrderService customerOrderService;

    public Cart getCartById(int cart_id){
        Session session = sessionFactory.getCurrentSession();
        return (Cart) session.get(Cart.class, cart_id);
    }

    public void update(Cart cart){
        int cartId = cart.getCart_id();
        double grandTotal = customerOrderService.getCustomerOrderGrandTotal(cartId);
        cart.setGran_total(grandTotal);

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cart);
    }

    public Cart validate(int cart_id) throws IOException{
        Cart cart = getCartById(cart_id);
        if(cart == null || cart.getCart_items().size() == 0){
            throw new IOException(cart_id + "");
        }

        update(cart);
        return cart;
    }


}
