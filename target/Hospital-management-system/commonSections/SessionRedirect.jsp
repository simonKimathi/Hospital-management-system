<%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 10/2/20
  Time: 6:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.hospital.model.User" %>

<%
    User user = (User) session.getAttribute("loggedInUser");



    if(user ==null){
        response.sendRedirect("../signIn_register/temp.jsp");
    }//redirect based on user roles
    else {
        if(user.getRole().equals("Admin")){
            response.sendRedirect(request.getContextPath());
        }
        else if(user.getRole().equals("Doctor")){
            response.sendRedirect(request.getContextPath());
        }
        else if(user.getRole().equals("Cashier")){
            response.sendRedirect(request.getContextPath());
        }
        else if(user.getRole().equals("Pharmacist")){
            response.sendRedirect(request.getContextPath());
        }
        else {
            response.sendRedirect(request.getContextPath());
        }
    }

%>
