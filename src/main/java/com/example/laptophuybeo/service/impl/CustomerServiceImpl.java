package com.example.laptophuybeo.service.impl;


import com.example.laptophuybeo.model.Customer;
import com.example.laptophuybeo.repository.CustomerRepository;
import com.example.laptophuybeo.service.CustomerService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    private CustomerRepository customerRepository;

    public CustomerServiceImpl(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    @Override
    public List<Customer> findAllCustomers() {
        List<Customer> customers = customerRepository.findAll();
        return customers;
    }
}
