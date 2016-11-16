package edu.mx.itesca.controller;

import edu.mx.itesca.model.Cart;
import edu.mx.itesca.model.Customer;
import edu.mx.itesca.model.CustomerOrder;
import edu.mx.itesca.services.CartService;
import edu.mx.itesca.services.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by dario on 10/11/2016.
 */
@Controller
public class OrderController {

    @Autowired
    private CartService cartService;

    @Autowired
    private CustomerOrderService customerOrderService;

    @RequestMapping("/order/{cart_id}")
    public String createOrder(@PathVariable("cart_id") int cart_id){
        CustomerOrder customerOrder = new CustomerOrder();
        Cart cart = cartService.getCartById(cart_id);
        customerOrder.setCart(cart);

        Customer customer = cart.getCustomer();
        customerOrder.setCustomer(customer);
        customerOrder.setBillingAddress(customer.getBillingAddress());
        customer.setShippingAddress(customer.getShippingAddress());

        customerOrderService.addCustomerOrder(customerOrder);

        return "redirect:/checkout?id="+cart_id;
    }

}
