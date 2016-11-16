package edu.mx.itesca.services.implementation;

import edu.mx.itesca.dao.Dao_CustomerOrder;
import edu.mx.itesca.model.Cart;
import edu.mx.itesca.model.CartItem;
import edu.mx.itesca.model.CustomerOrder;
import edu.mx.itesca.services.CartService;
import edu.mx.itesca.services.CustomerOrderService;
import edu.mx.itesca.services.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dario on 10/11/2016.
 */
@Service
public class CustomerOrderServiceImp implements CustomerOrderService{

    @Autowired
    private Dao_CustomerOrder dao_customerOrder;

    @Autowired
    private CartService cartService;

    public void addCustomerOrder(CustomerOrder customerOrder) {
        dao_customerOrder.addCustomerOrder(customerOrder);
    }

    public double getCustomerOrderGrandTotal(int cart_id) {
        double grandTotal = 0;
        Cart cart = cartService.getCartById(cart_id);
        List<CartItem> cartItems = cart.getCart_items();

        for (CartItem item : cartItems){
            grandTotal += item.getPrecio_total();
        }

        return grandTotal;
    }
}
