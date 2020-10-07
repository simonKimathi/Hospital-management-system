package com.hospital.servlet;

import com.hospital.EJB.UserBeanI;
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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

@WebServlet("/login")
public class LogInServlet extends HttpServlet {

    @EJB
    private UserBeanI userBean;

    @Inject
    private User user;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try{
            BeanUtils.populate(user,req.getParameterMap());

            User user1=userBean.getUser(user);

            if(user1 != null){
                HttpSession httpSession =req.getSession();
                httpSession.setAttribute("loggedInUser",user1);

                //resp.sendRedirect(req.getContextPath());


                //redirect based on user roles
                if(user1.getRole().equals("Admin")){
                    resp.sendRedirect("Cashier/cashier-dashboard.jsp");
                }
                else if(user1.getRole().equals("Doctor")){
                    resp.sendRedirect("doctor/doctor-dashboard.jsp");
                }
                else if(user1.getRole().equals("Cashier")){
                    resp.sendRedirect(req.getContextPath());
                }
                else if(user1.getRole().equals("Pharmacist")){
                    resp.sendRedirect(req.getContextPath());
                }
                else {
                    resp.sendRedirect(req.getContextPath());
                }

            }
            else {
/*
                resp.sendRedirect("sign_in/sign_in.jsp");*/
                PrintWriter out = resp.getWriter();
                out.println("<script src='Sweet_JS/sweetalert2.js'></script>");
                out.println("<script src='assets/js/jquery-3.2.1.min.js'></script>");
                out.println("<script>");
                out.println("$(document).ready(function(){");
                out.println("swal ( 'incorrect user name or password !' ,  'contact system admin if error persists' ,  'error' );");
                out.println("});");
                out.println("</script>");

                RequestDispatcher rd = req.getRequestDispatcher("sign_in/sign_in.jsp");
                rd.include(req, resp);

            }

        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }


    }
}
