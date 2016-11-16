package edu.mx.itesca.dao.implementation;

import edu.mx.itesca.dao.Dao_producto;
import edu.mx.itesca.model.Producto;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by dario on 05/10/2016.
 */
@Repository
@Transactional
public class DaoProductoImp implements Dao_producto {

    @Autowired
    private SessionFactory sessionFactory;

    public List<Producto> getProductList() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Producto");
        List<Producto> lista_productos = query.list();
        session.flush();

        return lista_productos;
    }

    public Producto getProductById(int producto_id) {
        Session session = sessionFactory.getCurrentSession();
        Producto producto = (Producto) session.get(Producto.class, producto_id);
        session.flush();

        return producto;
    }

    public void addProduct(Producto producto) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(producto);
        session.flush();
    }

    public void editProduct(Producto producto) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(producto);
        session.flush();
    }

    public void deleteProduct(Producto producto) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(producto);
        session.flush();
    }
}
