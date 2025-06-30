package com.example.ung_dung_calculator.servlet;

import com.example.ung_dung_calculator.model.Calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/calculate")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        float firstOperand = Integer.parseInt(req.getParameter("first-operand"));
        float secondOperand = Integer.parseInt(req.getParameter("second-operand"));
        char operator = req.getParameter("operator").charAt(0);
        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        writer.println("<h1>Result: </h1>");
        try {
            float result = Calculator.calculate(firstOperand, secondOperand, operator);
            writer.println(firstOperand + " " + operator + " " + secondOperand + " = " + result);
        } catch (Exception e) {
            writer.println("Error: " + e.getMessage());
        }
        writer.println("<html>");
    }
}
