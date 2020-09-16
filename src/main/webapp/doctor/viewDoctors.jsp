<%@ page import="javax.naming.Context" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="javax.naming.InitialContext" %><%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 02/09/2020
  Time: 17:53
  To change this template use File | Settings | File Templates.
--%>

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

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4" style="padding: 10px">
            <%--<div id="module-content"> table loading...</div>--%>
                <table class = "customers table table-bordered table-stripped table-condensed" align = "center" >
                    <tr>
                        <%--<thead class="table-primary" >--%>
                        <th scope="col">National Id</th>
                        <th scope="col">Name</th>
                        <th scope="col">Room Assigned</th>
                        <%--<th scope="col">Address</th>
                        <th scope="col">Contact</th>
                        <th scope="col">operations</th>--%>
                        <%--</thead>--%>
                    </tr>
                    <a href="addDoctor.jsp"><button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i> Add New Doctor</button></a><br><br>

                    <%
                        Context context = new InitialContext();
                        DataSource dataSource = (DataSource)context.lookup("java:jboss/datasources/mrs");


                        try
                        {
                            Connection connection = dataSource.getConnection();
                            String query = "Select * from hospital_doctor";
                            Statement statement = connection.createStatement();
                            ResultSet result = statement.executeQuery(query);
                            int count=0;
                            while(result.next())
                            {
                                count ++;
                                String name= result.getString("firstName") +" "+result.getString("lastName") +" "+result.getString("surName");
                    %>

                    <tr class="table-row" data-href="doctorProfile.jsp?id=<%=result.getString("NationalId") %>" >
                        <td><%=result.getString("NationalId")%></td>
                        <td><%=name%></td>
                        <td><%=result.getString("roomAssigned")%></td>
                        <%--<td><%=result.getString("address")%></td>
                        <td><%=result.getString("contact")%></td>--%>
                        <%--<td>
                            <a href="doctorProfile.jsp?id=<%=result.getString("employeeId") %>" > <button type="button" class="btn btn-info add-new">VIEW DOCTOR</button></a>
                        </td>--%>

                    </tr>
                    <%
                            }
                            application.setAttribute("doctorsCount",count);
                            connection.close();
                        }
                        catch(Exception ex)
                        {
                            out.println("Exception:" +ex.getMessage());
                            ex.printStackTrace();
                        }
                    %>
                </table>
        </main>
    </div>
</div>
<%--include footer--%>
<%@ include file="../commonSections/footer.jsp" %>
</body>
</html>
