<%@ page import="javax.naming.Context" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %><%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 03/08/2020
  Time: 08:17
  To change this template use File | Settings | File Templates.
--%>
<%
    String id=request.getParameter("id");
    try
    {
        Context context = new InitialContext();
        DataSource dataSource = (DataSource)context.lookup("java:jboss/datasources/mrs");
        Connection connection=dataSource.getConnection();
        Statement statement = connection.createStatement();
        int i=statement.executeUpdate("DELETE FROM patient WHERE id="+id);
        out.println("Data Deleted Successfully!");
        response.sendRedirect("viewPatients.jsp");
    }
    catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
%>