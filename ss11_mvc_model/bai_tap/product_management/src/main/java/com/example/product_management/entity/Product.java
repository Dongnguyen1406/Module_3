package com.example.product_management.entity;

public class Product {
    private Integer codeProduct;
    private String nameProduct;
    private Integer quantity;
    private String image;

    public Product() {
    }

    public Product(Integer codeProduct, String nameProduct, Integer quantity, String image) {
        this.codeProduct = codeProduct;
        this.nameProduct = nameProduct;
        this.quantity = quantity;
        this.image = image;
    }

    public Integer getCodeProduct() {
        return codeProduct;
    }

    public void setCodeProduct(Integer codeProduct) {
        this.codeProduct = codeProduct;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
