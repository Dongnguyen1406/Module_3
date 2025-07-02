package com.example.product_management.controller;

import com.example.product_management.entity.Product;
import com.example.product_management.service.IProductService;
import com.example.product_management.service.impl.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Currency;
import java.util.List;

@WebServlet(name = "ProductControlelr", urlPatterns = "/product")
public class ProductController extends HttpServlet {
    
    private final IProductService productService = new ProductService();
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        
        if (action == null){
            action = "";
        }
        
        switch (action){
            case "create":
                req.getRequestDispatcher("/WEB-INF/product/create.jsp").forward(req, resp);
                break;
            case "edit":
                int idToEdit = Integer.parseInt(req.getParameter("id"));
                Product product = this.productService.findById(idToEdit);
                req.setAttribute("product", product);
                req.getRequestDispatcher("/WEB-INF/product/edit.jsp").forward(req, resp);
                break;
            case "delete":
                req.getRequestDispatcher("/WEB-INF/product/delete.jsp").forward(req, resp);
                break;
            case "view":
                req.getRequestDispatcher("/WEB-INF/product/view.jsp").forward(req, resp);
                break;
            default:
                List<Product> products = productService.findAll();
                req.setAttribute("products", products);
                String message = req.getParameter("message");
                if (message != null){
                    switch (message){
                        case "created":
                            req.setAttribute("mess", "Thêm mới thành công!");
                    }
                }
                req.getRequestDispatcher("/WEB-INF/product/list.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        
        String action = req.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                Integer codeProduct = Integer.parseInt(req.getParameter("codeProduct"));
                String nameProduct = req.getParameter("nameProduct");
                Integer quantity = Integer.parseInt(req.getParameter("quantity"));
                String image = "img/avata.jpg";
                Product product = new Product(codeProduct, nameProduct, quantity, image);
                productService.add(product);
                resp.sendRedirect("/product?message=created");
                break;
            case "edit":
                String name = req.getParameter("nameProduct");
                Integer quantityProduct = Integer.parseInt(req.getParameter("quantity"));
                Product product1 = new Product(codeProduct, nameProduct)
                        
                this.productService.update(idToEdit, product1);
                req.setAttribute("product", product1);
                req.setAttribute("message", "Sản phảm đã cập nhập thành công!");
                dispatcher = req.getRequestDispatcher("/WEB-INF/product/edit.jsp");
                dispatcher.forward(req, resp);
                break;
            case "delete":
                int idToDelete = Integer.parseInt(req.getParameter("id"));
                Product product2 = this.productService.findById(idToDelete);
                RequestDispatcher dispatcher1;
                this.productService.delete(idToDelete);
                resp.sendRedirect("/products");
                break;
            case "view":
                int idToView = Integer.parseInt(req.getParameter("id"));
                Product product3= this.productService.findById(idToView);
                RequestDispatcher dispatcher2;
                req.setAttribute("product", product3);
                dispatcher2 = req.getRequestDispatcher("product/view.jsp");
                dispatcher2.forward(req, resp);
                break;
            case "search":
                break;
        }
    }
}
