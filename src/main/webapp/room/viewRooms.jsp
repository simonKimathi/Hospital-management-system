<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 02/09/2020
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 02/09/2020
  Time: 18:01
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

            <table class = " customers table table-bordered table-stripped table-condensed" align = "center" >
                <tr>
                    <thead class="table-primary">
                    <th scope="col">Room Id</th>
                    <th scope="col">room Type</th>
                    <th scope="col">room occupant</th>
                    <%--<th scope="col">operations</th>--%>
                    </thead>
                </tr>
                <a href="addRoom.jsp"><button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i> Add New Room</button></a><br><br>

                <%
                    Context context = new InitialContext();
                    DataSource dataSource = (DataSource)context.lookup("java:jboss/datasources/mrs");
                    try
                    {
                        Connection connection = dataSource.getConnection();
                        String query = "Select * from room";
                        Statement statement = connection.createStatement();
                        ResultSet result = statement.executeQuery(query);
                        int count=0;
                        while(result.next())
                        {
                          count ++;
                %>

                <tr>
                    <td><%=result.getString("id")%></td>
                    <td><%=result.getString("rType")%></td>
                    <td><%=result.getString("assigned")%></td>
                    <%--<td>
                        <a href="update.jsp?id=<%=result.getString("id") %>" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                        <a href="delete.jsp?id=<%=result.getString("id") %>" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                    </td>--%>

                </tr>
                <%

                        }
                        application.setAttribute("roomsCount",count);
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

