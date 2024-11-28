package com.example.laptophuybeo.controller;


import com.example.laptophuybeo.model.Customer;
import com.example.laptophuybeo.service.CustomerService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class CustomerController {

   private CustomerService customerService;

    public CustomerController(CustomerService customerService) {
        this.customerService = customerService;
    }

    // create handler method, GET request and return model and view
    @GetMapping("/admin/customers")
    public String customer(Model model){
        List<Customer> customers = customerService.findAllCustomers();
        model.addAttribute("customers", customers);
        return "/admin/customers";
    }
    @GetMapping("/admin/newCustomer")
    public String newCustomer(Model model){
        return "/admin/newCustomer";
    }

}
