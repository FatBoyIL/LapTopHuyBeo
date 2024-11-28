package com.example.laptophuybeo.repository;


import com.example.laptophuybeo.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    @Query("select p from Product p where "+"p.tensanpham like concat('%',:query,'%') or "+
            "p.mota like concat('%',:query,'%')"
            )
    List<Product> searchProductBy(String query);
}
