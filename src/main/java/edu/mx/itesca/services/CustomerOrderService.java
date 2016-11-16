package edu.mx.itesca.services;

import edu.mx.itesca.model.CustomerOrder;

/**
 * Created by dario on 10/11/2016.
 */
public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);

}
