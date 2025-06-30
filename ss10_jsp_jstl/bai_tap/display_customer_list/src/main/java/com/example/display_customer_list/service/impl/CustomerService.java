package com.example.display_customer_list.service.impl;

import com.example.display_customer_list.entity.Customer;
import com.example.display_customer_list.repository.CustomerRepo;
import com.example.display_customer_list.service.ICustomerService;

import java.util.ArrayList;
import java.util.List;

public class CustomerService implements ICustomerService {
    private static CustomerRepo customerRepo = new CustomerRepo(); 
    
    @Override
    public List<Customer> findAll() {
        return customerRepo.findAll();
    }
    
}
