<%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 03/09/2020
  Time: 09:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id=request.getParameter("eId");
    String room=request.getParameter("room");
    //String name=request.getParameter("name");
    try
    {
        Context context = new InitialContext();
        DataSource dataSource = (DataSource)context.lookup("java:jboss/datasources/mrs");
        Connection connection = dataSource.getConnection();
        PreparedStatement preparedStatement=connection.prepareStatement("UPDATE employee SET `roomAssigned`=? WHERE employeeId=?");
        preparedStatement.setString(1,room);
        preparedStatement.setString(2,id);
        preparedStatement.execute();

        /*PreparedStatement preparedStatement1=connection.prepareStatement("UPDATE room SET `assigned`=? WHERE id=?");
        preparedStatement1.setString(1,id);
        preparedStatement1.setString(2,room);
        preparedStatement.execute();*/
        response.sendRedirect("viewDoctors.jsp");
    }
    catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
%>
