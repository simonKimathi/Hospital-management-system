<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
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

        <main role="main" class="  col-md-9 ml-sm-auto col-lg-10 px-4" style="padding: 10px">
            <%--<div id="module-content"> table loading...</div>--%>
            <table class = "customers table table-bordered table-stripped table-condensed" align = "center">
                <tr>
                    <thead class="table-primary">
                    <th scope="col">Patient Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Date Of Birth</th><%--
                    <th scope="col">Contact</th>
                    <th scope="col">Emergency Contact</th>
                    <th scope="col">County</th>
                    <th scope="col">sub-county</th>
                    <th scope="col">Village</th>--%>
                    </thead>
                </tr>
                <a href="addPatient.jsp"><button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i> Add New patient</button></a><br><br>

                <%
                    Context context = new InitialContext();
                    DataSource dataSource = (DataSource)context.lookup("java:jboss/datasources/mrs");


                    try
                    {
                        Connection connection = dataSource.getConnection();
                        String query = "Select * from hospital_patient";
                        Statement statement = connection.createStatement();
                        ResultSet result = statement.executeQuery(query);
                        int count =0;
                        while(result.next())
                        {
                            count++;
                            String name= result.getString("firstName") +" "+result.getString("lastName") +" "+result.getString("surName");
                %>

                <tr class="table-row" data-href="PatientProfile.jsp?id=<%=result.getString("id") %>">
                    <td><%=result.getString("id")%></td>
                    <td><%=name%></td>
                    <td><%=result.getString("gender")%></td>
                    <td><%=result.getString("DOB")%></td><%--
                    <td><%=result.getString("contact")%></td>
                    <td><%=result.getString("emergencyContact")%></td>
                    <td><%=result.getString("county")%></td>
                    <td><%=result.getString("subCounty")%></td>
                    <td><%=result.getString("village")%></td>--%>
                    <%--<td>
                        <a href="PatientProfile.jsp?id=<%=result.getString("id") %>" > <button type="button" class="btn btn-info add-new">VIEW PATIENT</button></a>
                    </td>--%>

                </tr>
                <%
                        }
                        application.setAttribute("patientsCount",count);
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