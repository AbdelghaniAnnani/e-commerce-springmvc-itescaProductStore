package edu.mx.itesca.services;

import edu.mx.itesca.model.Customer;

import java.util.List;

/**
 * Created by dario on 03/11/2016.
 */
public interface CustomerService {

    void addCustomer(Customer customer);

    Customer getCustomerById(int customer_id);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String customer_username);

}
