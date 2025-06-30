package com.example.display_customer_list.service;

import java.util.List;

public interface IService<T> {
    List<T> findAll();
}
