package com.hospital.servlet;

import com.fasterxml.jackson.databind.DatabindContext;
import com.hospital.EJB.UserBeanI;
import com.hospital.commonClasses.BioData;
import com.hospital.commonClasses.Contact;
import com.hospital.model.User;
import org.apache.commons.beanutils.BeanUtils;

import javax.ejb.EJB;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

@WebServlet("/changePassword")
public class changePasswordServlet extends HttpServlet {

    @EJB
    private UserBeanI userBean;

    @Inject
    public User user;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        try {

            BeanUtils.populate(user, request.getParameterMap());

        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        response.getWriter().print(userBean.changePassword(user.getUserName(),user.getPassword()));

        response.sendRedirect("sign_in/sign_in.jsp");


    }

}
