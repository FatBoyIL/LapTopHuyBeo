package com.example.laptophuybeo.repository;

import com.example.laptophuybeo.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
}
