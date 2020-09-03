<%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 03/09/2020
  Time: 07:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container">
    <section class="module">
        <div class="module-inner">
            <div class="row">
                <div class="col-md-4">

                    <div class="user-info">
                        <img class="img-profile img-circle img-responsive center-block" src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="">
                        <%
                            String id1=request.getParameter("id");
                            try
                            {
                                Context context1 = new InitialContext();
                                DataSource dataSource1 = (DataSource)context1.lookup("java:jboss/datasources/mrs");
                                Connection connection1 = dataSource1.getConnection();
                                String query1 = "Select * from employee where employeeId ="+request.getParameter("id");
                                Statement statement1 = connection1.createStatement();
                                ResultSet result1 = statement1.executeQuery(query1);
                                while(result1.next())
                                {
                                    String name= result1.getString("firstName") +" "+result1.getString("lastName") +" "+result1.getString("surName");

                        %>
                        <ul class="meta list list-unstyled">
                            <br/>
                            <li class="name"> <%= name%>
                                <br/>
                                <label class="label label-info"><%= result1.getString("gender")%></label>
                            </li>
                            <table class="table table-borderless">
                                <tr>
                                    <td> Employee ID</td><td> <%=result1.getString("employeeId")%></td>
                                </tr>
                                <tr>
                                    <td> Address</td><td> <%=result1.getString("address")%></td>
                                </tr>
                                <tr>
                                    <td>Contact</td> <td><%=result1.getString("contact")%> </td>
                                </tr>
                            </table>
                        </ul>

                    </div>

                </div>
                <div class="col-md-5">
                    <br/>
                    <h1> Room assigned</h1>
                    <br/>
                    <%
                        String n="";
                        int r= result1.getInt("roomAssigned");
                        if(r==0){
                    %>
                    <%--<c:choose>
                        <c:when test="${<%=r%>>==n}">--%>
                            <span class="label label-success center-align">No room assigned</span><br/>
                            <a href="assignRoom.jsp?id=<%=result1.getString("employeeId") %>&name=<%=name%>" > <button type="button" class="btn btn-primary">assign room</button></a>
                        <%
                            }
                        else
                            {
                        %>
                   <%-- </c:when>
                        <c:otherwise>--%>
                    <span class="label label-success center-align"><%=result1.getString("roomAssigned") %></span>
                    <br/>
                    <a href="assignRoom.jsp?id=<%=result1.getString("employeeId") %>&name=<%=name%>" > <button type="button" class="btn btn-primary">Change room</button></a>

                    <%
                        }
                    %>
                    <%--</c:otherwise>
                    </c:choose>--%>

                    <%
                            }
                        }
                        catch(Exception ex1)
                        {
                            out.println("Exception:" +ex1.getMessage());
                            ex1.printStackTrace();
                        }

                    %>
                    <br/><br/><br/>
                    <hr/>
                    <h1> Pending patients</h1>
                    <hr/>
                    <div class="drive-wrapper drive-list-view">
                        <div class="table-responsive drive-items-table-wrapper">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th class="type"></th>
                                    <th class="name truncate">Patient Id</th>
                                    <th class="date">Patient Name</th>
                                </tr>
                                </thead>
                                <tbody>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>
