package edu.mx.itesca.services.implementation;

import edu.mx.itesca.dao.Dao_Cart;
import edu.mx.itesca.model.Cart;
import edu.mx.itesca.services.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;

/**
 * Created by dario on 08/11/2016.
 */
@Service
public class CartServiceImp implements CartService{

    @Autowired
    private Dao_Cart dao_cart;

    public Cart getCartById(int cart_id){
        return dao_cart.getCartById(cart_id);
    }

    public void update(Cart cart){
        dao_cart.update(cart);
    }

    public Cart validate(int cart_id) throws IOException {
        return dao_cart.validate(cart_id);
    }
}
