package com.hospital.servlets;

//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//@WebServet()

public class HelloServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {


        PrintWriter printWriter= response.getWriter();

        printWriter.println("This is my first servlet");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {


        PrintWriter printWriter= response.getWriter();

        printWriter.println("This is my first servlet");
    }
}
