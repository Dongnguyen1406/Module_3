package com.example.product_management.service.impl;

import com.example.product_management.entity.Product;
import com.example.product_management.repository.ProductRepo;
import com.example.product_management.service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    private static ProductRepo productRepo = new ProductRepo();

    @Override
    public List<Product> findAll() {
        return productRepo.findAll();
    }

    @Override
    public void add(Product product) {
        productRepo.add(product);
    }

    @Override
    public void update(int id, Product product) {
        productRepo.update(id, product);
    }

    @Override
    public void delete(int id) {
        productRepo.remove(id);
    }

    @Override
    public Product findById(int id) {
        return productRepo.findById(id);
    }

    @Override
    public Product findByName(String name) {
        return null;
    }
}
