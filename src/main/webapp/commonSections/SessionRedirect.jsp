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
        response.sendRedirect("../sign_in/sign_in.jsp");
    }//redirect based on user roles
    else {
        if(user.getRole().equals("Admin")){
            response.sendRedirect("../admin/index.jsp");
        }
        else if(user.getRole().equals("Doctor")){
            response.sendRedirect("../doctor/doctor-dashboard.jsp");
        }
        else if(user.getRole().equals("Cashier")){
            response.sendRedirect("../Cashier/cashier-dashboard.jsp");
        }
        else if(user.getRole().equals("Reception")){
            response.sendRedirect("../Registration/registration-dashboard.jsp");
        }
        else {
            response.sendRedirect(request.getContextPath());
        }
    }

%>
