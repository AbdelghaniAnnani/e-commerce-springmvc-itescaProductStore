package edu.mx.itesca.controller;

import edu.mx.itesca.model.Producto;
import edu.mx.itesca.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.util.List;

/**
 * Created by dario on 02/11/2016.
 */
@Controller
@RequestMapping("/productos")
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping
    public String getProductos(Model model) {
        List<Producto> lista_productos = productService.getProductList();
        model.addAttribute("lista_productos", lista_productos);
        return "productos";
    }

    @RequestMapping("/productoDetalles/{product_id}")
    public String detallesProducto(@PathVariable int product_id, Model model) throws IOException {
        Producto producto = productService.getProductById(product_id);
        model.addAttribute(producto);

        return "productoDetalles";
    }
}
