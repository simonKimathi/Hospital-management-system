package com.hospital.Employee.Servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hospital.Employee.bean.EmployeeBeanI;
import com.hospital.Employee.model.Employee;
import org.apache.commons.beanutils.BeanUtils;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;

@WebServlet("/employee")
public class EmployeeServlet extends HttpServlet {
    @Inject
    private EmployeeBeanI employeeBean;

    @Inject
    public Employee employee;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //instantiate servlet context to be used everywhere
        ServletContext servletContext=getServletContext();
        //get connection from other context on database connection from database bootstrap
        Connection dbConnection=(Connection)servletContext.getAttribute("dbConnection");
        response.setContentType("text/plain");

        ObjectMapper objectMapper=new ObjectMapper();
        response.getWriter().print(objectMapper.writeValueAsString(employeeBean.listDoctors(dbConnection)));


    }
    protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        ServletContext scx = getServletContext();
        Connection dbConnection = (Connection) scx.getAttribute("dbConnection");

        try {
            BeanUtils.populate(employee, request.getParameterMap());

        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        response.getWriter().print(employeeBean.addDoctor(dbConnection,employee));
        response.sendRedirect("doctor/viewDoctors.jsp");
    }
}
