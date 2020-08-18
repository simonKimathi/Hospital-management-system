package com.hospital.servlet;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("kim")
public class helloServlet extends GenericServlet {
    @Override
    public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
        PrintWriter printWriter= response.getWriter();
        String userName=request.getParameter("userName");
        String age =request.getParameter("age");
        String city =request.getParameter("city");
        StringBuilder stringBuilder=new StringBuilder();
        stringBuilder.append("hi "+userName+",");
        ServletContext sc=getServletContext();
        String connect=(String) (sc.getAttribute("connect"));
        if((Integer.parseInt(age))>18) {
            stringBuilder.append(" you are allowed to vote"+connect);
        }else{
            stringBuilder.append(" you are NOT allowed to vote"+connect);

        }
        printWriter.println(stringBuilder.toString());
        //printWriter.println("hello world, i hope this will do"+userName);

    }
/*    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //response.getContentType("text/html");
        PrintWriter printWriter= response.getWriter();
        String userName=request.getParameter("userName");
        printWriter.println("hello world, i hope this will do"+userName);
    }*/
}
