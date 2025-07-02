package com.example.product_management.service;

import com.example.product_management.entity.Product;

import java.util.List;

public interface IService<T> {
    List<T> findAll();
    void add(Product product);
    void update(int id, Product product);
    void delete(int id);
    Product findById(int id);
    Product findByName(String name);
}
