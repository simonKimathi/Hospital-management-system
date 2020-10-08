package com.hospital.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hospital.EJB.PatientBeanI;
import com.hospital.commonClasses.BioData;
import com.hospital.commonClasses.Contact;
import com.hospital.model.Patient;
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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/patient")
public class PatientServlet extends HttpServlet {

    @EJB
    private PatientBeanI patientBean;

    @Inject
    public Patient patient;

    @Inject
    public BioData bioData;

    @Inject
    public Contact contact;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/plain");

        ObjectMapper objectMapper=new ObjectMapper();
        response.getWriter().print(objectMapper.writeValueAsString(patientBean.list()));


    }
    protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        try{
            BeanUtils.populate(bioData, request.getParameterMap());
            BeanUtils.populate(contact, request.getParameterMap());

            BeanUtils.populate(patient, request.getParameterMap());

            patient.setBioData(bioData);
            patient.setContact(contact);

        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        String tmpId = patient.getBioData().getNationalId();
        response.getWriter().print(patientBean.add(patient));

        response.sendRedirect("Registration/patient-profile.jsp?id="+tmpId);
    }
}
