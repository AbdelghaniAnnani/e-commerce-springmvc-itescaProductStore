package edu.mx.itesca.dao.implementation;

import edu.mx.itesca.dao.Dao_CartItem;
import edu.mx.itesca.model.Cart;
import edu.mx.itesca.model.CartItem;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by dario on 08/11/2016.
 */
@Repository
@Transactional
public class DaoCartItemImp implements Dao_CartItem{

    @Autowired
    private SessionFactory sessionFactory;

    public void addCartItem(CartItem cartItem){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cartItem);
        session.flush();
    }

    public void removeCartItem(CartItem cartItem){
        Session session = sessionFactory.getCurrentSession();
        if(cartItem.getCantidad() > 1) {
            cartItem.setCantidad(cartItem.getCantidad()-1);
            cartItem.setPrecio_total(cartItem.getProducto().getPrecio()*cartItem.getCantidad());
            session.saveOrUpdate(cartItem);
        }
        else{
            session.delete(cartItem);
        }

        session.flush();
    }

    public void removeAllCartItems(Cart cart){
        Session session = sessionFactory.getCurrentSession();
        List<CartItem> cartItems = cart.getCart_items();
        for (CartItem item : cartItems){
            session.delete(item);
        }
        session.flush();
    }

    public CartItem getCartItemByProductId(int producto_id){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CartItem where producto_id = ?");
        query.setInteger(0, producto_id);
        session.flush();

        return (CartItem) query.uniqueResult();
    }
}
