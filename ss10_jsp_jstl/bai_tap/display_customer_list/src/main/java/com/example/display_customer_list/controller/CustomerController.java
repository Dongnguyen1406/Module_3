package com.example.display_customer_list.controller;

import com.example.display_customer_list.entity.Customer;
import com.example.display_customer_list.service.ICustomerService;
import com.example.display_customer_list.service.impl.CustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "customerController", urlPatterns = "/customer")
public class CustomerController extends HttpServlet {
    private static ICustomerService customerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Customer> customers = customerService.findAll();
        req.setAttribute("customers", customers);
        req.getRequestDispatcher("/WEB-INF/customer/list.jsp").forward(req, resp);
    }
}
