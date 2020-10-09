package com.hospital.servlet;

import com.hospital.EJB.InvoiceLineBeanI;
import com.hospital.EJB.UserBeanI;
import com.hospital.model.InvoiceLine;
import com.hospital.model.User;
import org.apache.commons.beanutils.BeanUtils;

import javax.ejb.EJB;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

@WebServlet("/payBill")
public class payBill extends HttpServlet {

    @EJB
    private InvoiceLineBeanI invoiceLineBean;

    @Inject
    public InvoiceLine invoiceLine;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id= Integer.parseInt(request.getParameter("id"));

        try {

            BeanUtils.populate(invoiceLine, request.getParameterMap());

        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        response.getWriter().print(invoiceLineBean.payBill(id));

        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();
        out.println("<script src='Sweet_JS/sweetalert2.js'></script>");
        out.println("<script src='assets/js/jquery-3.2.1.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'Bill updated Successfully !' ,  '' ,  'success' );");
        out.println("});");
        out.println("</script>");

        response.sendRedirect("Cashier/cashier-dashboard.jsp");

/*
        response.sendRedirect("Cashier/cashier-dashboard");*/


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            BeanUtils.populate(invoiceLine, request.getParameterMap());

        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        invoiceLineBean.add(invoiceLine);
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();
        out.println("<script src='Sweet_JS/sweetalert2.js'></script>");
        out.println("<script src='assets/js/jquery-3.2.1.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'Bill added Successfully !' ,  'bill received' ,  'success' );");
        out.println("});");
        out.println("</script>");

        response.sendRedirect("Cashier/cashier-dashboard.jsp");;

        //


    }
}
