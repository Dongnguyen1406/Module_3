package com.example.display_customer_list.repository;

import com.example.display_customer_list.entity.Customer;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepo {
    private static List<Customer> customers = new ArrayList<>();

    static {
        customers.add(new Customer(1, "Mai Văn Hoàn", LocalDate.of(1983,8,20), "Hà Nội", "img/avata.jpg"));
        customers.add(new Customer(1, "Nguyễn Văn Nam", LocalDate.of(1983,8,20), "Hà Nội", "img/avata.jpg"));
        customers.add(new Customer(1, "Nguyễn Thái Hòa", LocalDate.of(1983,8,20), "Hà Nội", "img/avata.jpg"));
        customers.add(new Customer(1, "Trần Đăng Khoa", LocalDate.of(1983,8,20), "Hà Nội", "img/avata.jpg"));
        customers.add(new Customer(1, "Nguyễn Đình Thi", LocalDate.of(1983,8,20), "Hà Nội", "img/avata.jpg"));
    }

    public List<Customer> findAll() {
        return customers;
    }

    public void add(Customer customer) {
        customers.add(customer);
    }
}
