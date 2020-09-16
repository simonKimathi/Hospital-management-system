<%@ page import="javax.naming.Context" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 03/09/2020
  Time: 08:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<%--include header tag--%>
<%@ include file="../commonSections/header.jsp" %>
<body>
<%--navigation bar--%>
<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow" >
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="http://localhost:8080/Hospital-management-system">Nairobi Hospital</a>
    <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link" href="#">Sign out</a>
        </li>
    </ul>
</nav>
<div class="container-fluid" style="padding-top:50px">
    <div class="row">

        <%--include navigation bar--%>
        <%@ include file="../commonSections/sideBar.jsp" %>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

            <div class="container">
                <div class="card-header">
                    <h4 class="card-title">
                        assign room </h4>
                    <a class="heading-elements-toggle" href="#"> <i class="la la-ellipsis-h font-medium-3"> </i> </a>
                </div>
                <div class="card-body">
                    <%
                        String eId=request.getParameter("id");
                        String name="Dr. "+request.getParameter("name");

                    %>
                    <form id="addForm" method="post" action="${request.contextPath}/Hospital-management-system/assign?eId=<%=eId%>&name=<%=name%>">
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="inputGender">Room Id</label>
                                <select id="inputGender" class="form-control" placeholder="choose..." name="room">
                                    <%

                                        try{
                                            Context context = new InitialContext();
                                            DataSource dataSource = (DataSource)context.lookup("java:jboss/datasources/mrs");
                                            Connection connection= dataSource.getConnection();
                                            PreparedStatement preparedStatement=connection.prepareStatement("select * from room");
                                            ResultSet resultSet= preparedStatement.executeQuery();
                                            while (resultSet.next()) {

                                    %>
                                    <option><%=resultSet.getString("id")%></option>
                                    <%
                                            }
                                            connection.close();
                                        }
                                        catch(Exception e)
                                        {
                                            System.out.print(e);
                                            e.printStackTrace();
                                        }
                                    %>
                                </select>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </form>
                </div>
            </div>
        </main>
    </div>
</div>
<%--include footer--%>
<%@ include file="../commonSections/footer.jsp" %>
</body>
</html>


