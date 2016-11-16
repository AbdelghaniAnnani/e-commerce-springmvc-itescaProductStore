package edu.mx.itesca.dao;

import edu.mx.itesca.model.Cart;
import edu.mx.itesca.model.CartItem;

/**
 * Created by dario on 08/11/2016.
 */
public interface Dao_CartItem {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int producto_id);
}
