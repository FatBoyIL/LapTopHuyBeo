package com.example.laptophuybeo.service.impl;


import com.example.laptophuybeo.model.Product;
import com.example.laptophuybeo.repository.ProductRepository;
import com.example.laptophuybeo.service.ProductService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductServiceImpl implements ProductService {

    private ProductRepository productRepository;

    public ProductServiceImpl(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @Override
    public List<Product> findAllProducts() {
        return productRepository.findAll();
    }

    @Override
    public void saveProduct(Product product) {
        productRepository.save(product);
    }

    @Override
    public Optional<Product> findProductById(long id) {
        return productRepository.findById(id);
    }

    @Override
    public List<Product> searchProduct(String keyword) {
        return productRepository.searchProductBy(keyword);
    }
}
