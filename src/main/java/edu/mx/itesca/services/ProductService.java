package edu.mx.itesca.services;

import edu.mx.itesca.model.Producto;

import java.util.List;

/**
 * Created by dario on 02/11/2016.
 */
public interface ProductService {

    List<Producto> getProductList();

    Producto getProductById(int id);

    void addProduct(Producto producto);

    void editProduct(Producto producto);

    void deleteProduct(Producto producto);

}
