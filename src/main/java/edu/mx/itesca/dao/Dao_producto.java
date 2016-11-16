package edu.mx.itesca.dao;

import edu.mx.itesca.model.Producto;

import java.util.List;

/**
 * Created by dario on 20/10/2016.
 */
public interface Dao_producto {

    List<Producto> getProductList();

    Producto getProductById(int producto_id);

    void addProduct(Producto producto);

    void editProduct(Producto producto);

    void deleteProduct(Producto producto);
}
