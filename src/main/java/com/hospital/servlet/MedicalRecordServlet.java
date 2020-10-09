package com.hospital.servlet;

import com.hospital.EJB.medicalRecordBeanI;
import com.hospital.model.MedicalRecord;
import org.apache.commons.beanutils.BeanUtils;

import javax.ejb.EJB;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

@WebServlet("/medical-record")
public class MedicalRecordServlet extends HttpServlet {

    @EJB
    private medicalRecordBeanI medicalRecordBean;

    @Inject
    private MedicalRecord medicalRecord;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            BeanUtils.populate(medicalRecord, request.getParameterMap());

        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        medicalRecordBean.add(medicalRecord);
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();
        out.println("<script src='Sweet_JS/sweetalert2.js'></script>");
        out.println("<script src='assets/js/jquery-3.2.1.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'record added Successfully !' ,  'record saved' ,  'success' );");
        out.println("});");
        out.println("</script>");

        response.sendRedirect("doctor/doctor-dashboard.jsp");;
    }
}
