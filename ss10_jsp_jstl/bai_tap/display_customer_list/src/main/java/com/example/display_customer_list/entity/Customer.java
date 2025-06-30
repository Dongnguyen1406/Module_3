package com.example.display_customer_list.entity;

import java.time.LocalDate;

public class Customer {
    private Integer codeCustomer;
    private String nameCustomer;
    private LocalDate dob;
    private String address;
    private String image;
    
    public Customer() {
    }

    public Customer(Integer codeCustomer, String nameCustomer, LocalDate dob, String address, String image) {
        this.codeCustomer = codeCustomer;
        this.nameCustomer = nameCustomer;
        this.dob = dob;
        this.address = address;
        this.image = image;
    }

    public Integer getCodeCustomer() {
        return codeCustomer;
    }

    public void setCodeCustomer(Integer codeCustomer) {
        this.codeCustomer = codeCustomer;
    }

    public String getNameCustomer() {
        return nameCustomer;
    }

    public void setNameCustomer(String nameCustomer) {
        this.nameCustomer = nameCustomer;
    }

    public LocalDate getDob() {
        return dob;
    }

    public void setDob(LocalDate dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
