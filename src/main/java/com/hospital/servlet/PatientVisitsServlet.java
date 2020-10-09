package com.hospital.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.hospital.EJB.InvoiceLineBeanI;
import com.hospital.EJB.PatientVisitBeanI;
import com.hospital.model.InvoiceLine;
import com.hospital.model.PatientVisits;
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

@WebServlet("/Patient_visits")
public class PatientVisitsServlet extends HttpServlet {

    @EJB
    private PatientVisitBeanI patientVisitBean;

    @EJB
    private InvoiceLineBeanI invoiceLineBean;

    @Inject
    private PatientVisits patientVisits;

    @Inject
    private InvoiceLine invoiceLine;


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");

        ObjectMapper objectMapper=new ObjectMapper();
        response.getWriter().print(objectMapper.writeValueAsString(patientVisitBean.list()));


    }
    protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        try{
            BeanUtils.populate(patientVisits, request.getParameterMap());
            patientVisits.setStatus("inProgress");

            invoiceLine.setParticular("Registration");
            invoiceLine.setPatientId(patientVisits.getPatientId());
            invoiceLine.setPrice(200);
            invoiceLine.setQuantity(1);
            invoiceLine.setStatus("Not Paid");
            invoiceLine.setVisitId(patientVisits.getId());




        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        response.getWriter().print(patientVisitBean.add(patientVisits));

        response.getWriter().print(invoiceLineBean.add(invoiceLine));

        response.sendRedirect("Registration/registration-dashboard.jsp");
    }
}
