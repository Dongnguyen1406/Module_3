package com.example.product_management.repository;

import com.example.product_management.entity.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepo {
    private static List<Product> products = new ArrayList<>();
    static {
        products.add(new Product(1, "Tai nghe", 2, "img/avata.jpg"));
        products.add(new Product(2, "Máy tính", 2, "img/avata.jpg"));
        products.add(new Product(3, "Điện thoại", 2, "img/avata.jpg"));
        products.add(new Product(4, "Máy lạnh", 2, "img/avata.jpg"));
        products.add(new Product(5, "Máy giặc", 2, "img/avata.jpg"));
    }
    
    public List<Product> findAll(){
        return products;
    }
    
    public void add(Product product){
        products.add(product);
    }
    
    public Product findById(int id){
        return products.get(id);
    }
    
    public void update(int id, Product product){
        products.set(id, product);
    }
    
    public void remove(int id){
        products.remove(id);
    }
    
    
}
