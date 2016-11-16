package edu.mx.itesca.services;

import edu.mx.itesca.model.Cart;

import java.io.IOException;

/**
 * Created by dario on 08/11/2016.
 */
public interface CartService {

    Cart getCartById(int cart_id);

    void update(Cart cart);

    Cart validate(int cart_id) throws IOException;

}
