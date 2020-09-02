package com.hospital.patient.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hospital.department.annotation.SaveToDb;
import com.hospital.department.bean.DepartmentBeanI;
import com.hospital.department.model.Department;
import com.hospital.patient.bean.PatientBeanI;
import com.hospital.patient.model.Patient;
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

@WebServlet("/patient")
public class PatientServlet extends HttpServlet {

    @Inject
    private PatientBeanI patientBean;

    @Inject
    public Patient patient;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //instantiate servlet context to be used everywhere
        ServletContext servletContext=getServletContext();
        //get connection from other context on database connection from database bootstrap
        Connection dbConnection=(Connection)servletContext.getAttribute("dbConnection");
        response.setContentType("text/plain");

        ObjectMapper objectMapper=new ObjectMapper();
        response.getWriter().print(objectMapper.writeValueAsString(patientBean.list(dbConnection)));


    }
    protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        ServletContext scx = getServletContext();
        Connection dbConnection = (Connection) scx.getAttribute("dbConnection");

        try {
            BeanUtils.populate(patient, request.getParameterMap());

        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        response.getWriter().print(patientBean.add(dbConnection,patient));
    }
}
