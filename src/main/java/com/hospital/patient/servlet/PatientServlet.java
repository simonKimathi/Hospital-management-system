package com.hospital.patient.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hospital.patient.model.Patient;

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

@WebServlet("/patient")
public class PatientServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //get connection from database contect attribute
        ServletContext context=getServletContext();
        Connection connection=(Connection)context.getAttribute("dbConnection");
        //create a list of patients object
        List<Patient> patientList=new ArrayList<Patient>();

        //get all the patients
        try{
            PreparedStatement preparedStatement=connection.prepareStatement("select  * from patient");
            preparedStatement.execute();
            //get results from query
            ResultSet resultSet=preparedStatement.getResultSet();
            while (resultSet.next()){
                //create object of class patient
                Patient patient=new Patient();

                //....to be done

                patientList.add(patient);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        //map the list object to a string using jackson
        ObjectMapper mapper=new ObjectMapper();
        resp.getWriter().print(mapper.writeValueAsString(patientList));

    }
}
