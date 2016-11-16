package edu.mx.itesca.dao;

import edu.mx.itesca.model.Customer;

import java.util.List;

/**
 * Created by dario on 04/11/2016.
 */
public interface Dao_Customer {

    void addCustomer(Customer customer);

    Customer getCustomerById(int customer_id);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String customer_username);
}
