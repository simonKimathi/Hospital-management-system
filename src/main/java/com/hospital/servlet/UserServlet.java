package com.hospital.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hospital.EJB.UserBeanI;
import com.hospital.commonClasses.BioData;
import com.hospital.commonClasses.Contact;
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

@WebServlet("/register")
public class UserServlet extends HttpServlet {
    @EJB
    private UserBeanI userBean;

    @Inject
    public BioData bioData;

    @Inject
    public Contact contact;

    @Inject
    public User user;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");

        ObjectMapper objectMapper=new ObjectMapper();
        response.getWriter().print(objectMapper.writeValueAsString(userBean.list()));


    }
    protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        try {
            BeanUtils.populate(bioData, request.getParameterMap());
            BeanUtils.populate(contact, request.getParameterMap());

            BeanUtils.populate(user, request.getParameterMap());
            user.setBioData(bioData);
            user.setContact(contact);

        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        response.getWriter().print(userBean.registerUser(user));

        PrintWriter out = response.getWriter();
        out.println("<script src='Sweet_JS/sweetalert2.js'></script>");
        out.println("<script src='assets/js/jquery-3.2.1.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'account created successfully!' ,  '' ,  'success' );");
        out.println("});");
        out.println("</script>");

        RequestDispatcher rd = request.getRequestDispatcher("admin/manageUsers.jsp");
        rd.include(request, response);



        //response.sendRedirect("signIn_register/sign_in.jsp");
    }
}
