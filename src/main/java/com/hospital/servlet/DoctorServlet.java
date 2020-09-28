package com.hospital.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hospital.EJB.DoctorBeanI;
import com.hospital.commonClasses.BioData;
import com.hospital.commonClasses.Contact;
import com.hospital.model.Doctor;
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

import static java.lang.Integer.parseInt;

@WebServlet("/doctor")
public class DoctorServlet extends HttpServlet {
    @EJB
    private DoctorBeanI doctorBean;

    @Inject
    public Doctor doctor;

    @Inject
    public BioData bioData;


    @Inject
    public Contact contact;


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/plain");

        ObjectMapper objectMapper=new ObjectMapper();
        response.getWriter().print(objectMapper.writeValueAsString(doctorBean.list()));


    }
    protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        try {
            BeanUtils.populate(bioData, request.getParameterMap());
            BeanUtils.populate(contact, request.getParameterMap());

            BeanUtils.populate(doctor, request.getParameterMap());

            doctor.setBioData(bioData);
            doctor.setContact(contact);

        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        response.getWriter().print(doctorBean.add(doctor));
        response.sendRedirect("doctor/viewDoctors.jsp");
    }
}
