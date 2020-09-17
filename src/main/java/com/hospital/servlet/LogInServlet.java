package com.hospital.servlet;

import com.hospital.EJB.UserBeanI;
import com.hospital.model.User;
import org.apache.commons.beanutils.BeanUtils;

import javax.ejb.EJB;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
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

                resp.sendRedirect("index.jsp");
            }

        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        resp.sendRedirect("login.jsp");
    }
}
