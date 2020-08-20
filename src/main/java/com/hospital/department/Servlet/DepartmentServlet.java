package com.hospital.department.Servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hospital.department.model.Department;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/department")
public class DepartmentServlet extends HttpServlet {
    //GET method
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //instantiate servlet context to be used everywhere
        ServletContext servletContext=getServletContext();
        //get connection from other context on database connection from database bootstrap
        Connection dbConnection=(Connection)servletContext.getAttribute("dbConnection");
        response.setContentType("text/plain");
        //create array list of departments
        List<Department> departmentList=new ArrayList<Department>();
        try {
            //get data from database
            PreparedStatement preparedStatement = dbConnection.prepareStatement("SELECT * FROM department");
            preparedStatement.execute();
            ResultSet resultSet = preparedStatement.getResultSet();
            while (resultSet.next()){
                Department department=new Department();
                department.setId(resultSet.getString("id"));
                department.setName(resultSet.getString("name"));

                departmentList.add(department);
            }



        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        //map the object using object mapper(jackson) to be handles as html

        ObjectMapper objectMapper=new ObjectMapper();
        response.getWriter().print(objectMapper.writeValueAsString(departmentList));


    }

}
