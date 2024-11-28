package com.example.laptophuybeo.controller;




import com.example.laptophuybeo.model.Comment;
import com.example.laptophuybeo.model.Product;
import com.example.laptophuybeo.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Base64;
import java.util.List;
import java.util.Optional;

@Controller
public class ProductController {

   private ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/")
    public String homePage(Model model){
        List<Product> products = productService.findAllProducts();
        model.addAttribute("products", products);
        return "guest/index";
    }

    @GetMapping("/laptop/{laptopId}")
    public String productView(Model model, @PathVariable Long laptopId){
        Product product = productService.findProductById(laptopId).orElseThrow(() -> new RuntimeException("Khong tim thay sp"));
        Comment comment = new Comment();
        model.addAttribute("comment", comment);
        model.addAttribute("product", product);
        return "guest/product";
    }
    @GetMapping("/laptop/search")
    public String searchProducts(@RequestParam(value = "query") String query, Model model){
        List<Product> products =productService.searchProduct(query);
        model.addAttribute("products", products);
        return "guest/index";
    }
}

