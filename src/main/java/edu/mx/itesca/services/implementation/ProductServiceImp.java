package edu.mx.itesca.services.implementation;

import edu.mx.itesca.dao.Dao_producto;
import edu.mx.itesca.model.Producto;
import edu.mx.itesca.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dario on 02/11/2016.
 */
@Service
public class ProductServiceImp implements ProductService {

    @Autowired
    private Dao_producto dao_producto;

    public List<Producto> getProductList() {
        return dao_producto.getProductList();
    }

    public Producto getProductById(int id) {
        return dao_producto.getProductById(id);
    }

    public void addProduct(Producto producto) {
        dao_producto.addProduct(producto);
    }

    public void editProduct(Producto producto) {
        dao_producto.editProduct(producto);
    }

    public void deleteProduct(Producto producto) {
        dao_producto.deleteProduct(producto);
    }
}
