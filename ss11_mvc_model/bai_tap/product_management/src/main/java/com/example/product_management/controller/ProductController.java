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
import java.util.List;

@WebServlet(name = "ProductControlelr", urlPatterns = "/product")
public class ProductController extends HttpServlet {
    
    private final IProductService productService = new ProductService();
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                showCreateForm(req, resp);
                break;
            case "delete":
                int idToDelete = Integer.parseInt(req.getParameter("id"));
                Product productToDelete = productService.findById(idToDelete);
                req.setAttribute("product", productToDelete); // phải là product
                showDeleteForm(req, resp);
                break;
            case "search":
                break;
            case "view":
                int idToView = Integer.parseInt(req.getParameter("id"));
                Product product1 = productService.findById(idToView);
                req.setAttribute("product", product1);
                showViewForm(req, resp);
                break;
            case "edit":
                int idToEdit = Integer.parseInt(req.getParameter("id"));
                Product product2 = productService.findById(idToEdit);
                req.setAttribute("product", product2);
                showUpdateForm(req, resp);
                break;
            default:
                List<Product> product3 = productService.findAll();
                req.setAttribute("products", product3);
                req.getRequestDispatcher("/WEB-INF/product/list.jsp").forward(req, resp);
        }
    }

    public void showCreateForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("product", productService.findAll());
        req.getRequestDispatcher("/WEB-INF/product/create.jsp").forward(req, resp);
    }

    public void showUpdateForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/product/edit.jsp").forward(req, resp);
    }

    public void showViewForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/product/view.jsp").forward(req, resp);
    }

    public void showDeleteForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/product/delete.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
           String action = req.getParameter("action");
           switch (action){
               case "create":
                   create(req, resp);
                   break;
               case "delete":
                   delete(req, resp);
                   break;
               case "search":
                   break;
               case "edit":
                   update(req, resp);
                   break;
           }
    }
    
    private void create(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        int id = Integer.parseInt(req.getParameter("codeProduct"));
        String name = req.getParameter("nameProduct");
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        String image = "img/avata.jpg";
        Product product = new Product(id, name, quantity, image);
        productService.add(product);
        resp.sendRedirect("/product?mess=create success");
    }
    
    private void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        int idToDelete = Integer.parseInt(req.getParameter("id"));
        productService.delete(idToDelete);
        resp.sendRedirect("/product?mess=delete success");
    }
    
    private void update(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("nameProduct");
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        String image = "img/avata.jpg";
        Product product = new Product(id, name, quantity, image);
        productService.update(id, product);
        resp.sendRedirect("/product?mess=update success");
    }
}
