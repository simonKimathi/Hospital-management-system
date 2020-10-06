<%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 9/21/20
  Time: 1:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.hospital.model.User" %>

<%
    User user = (User) session.getAttribute("loggedInUser");


    if(user ==null){
        response.sendRedirect("../signIn_register/temp.jsp");
    }

%>