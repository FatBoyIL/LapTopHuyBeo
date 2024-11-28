package com.example.laptophuybeo.service;

import com.example.laptophuybeo.model.Product;

import java.util.List;
import java.util.Optional;

public interface ProductService {
    List<Product> findAllProducts();
    void saveProduct(Product product);
    Optional<Product> findProductById(long id);
    List<Product> searchProduct(String keyword);
}
