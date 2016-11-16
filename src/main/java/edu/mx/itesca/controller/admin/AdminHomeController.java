package edu.mx.itesca.controller.admin;

import edu.mx.itesca.model.Customer;
import edu.mx.itesca.model.Producto;
import edu.mx.itesca.services.CustomerService;
import edu.mx.itesca.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by dario on 02/11/2016.
 */
@Controller
@RequestMapping("/admin")
public class AdminHomeController {

    @Autowired
    private ProductService productService;

    @Autowired
    private CustomerService customerService;

    @RequestMapping
    public String adminHomePage() {
        return "admin";
    }

    @RequestMapping("/inventario")
    public String inventario(Model model) {
        List<Producto> lista_productos = productService.getProductList();
        model.addAttribute("lista_productos", lista_productos);

        return "productoInventario";
    }

    @RequestMapping("/customer")
    public String customerManagement(Model model) {
        List<Customer> customerList = customerService.getAllCustomers();
        model.addAttribute("customerList", customerList);
        return "adminListaUsuarios";
    }


}
