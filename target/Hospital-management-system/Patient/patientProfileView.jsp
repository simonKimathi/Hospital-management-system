<%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 03/09/2020
  Time: 05:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
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
                                String query1 = "Select * from patient where id ="+id1;
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
                                    <td> ID Number</td><td> <%=result1.getString("id")%></td>
                                </tr>
                                <tr>
                                    <td> Date of Birth</td><td> <%=result1.getString("DOB")%></td>
                                </tr>
                                <tr>
                                    <td>Contact</td> <td><%=result1.getString("contact")%> </td>
                                </tr>
                                <tr>
                                    <td>Emergency Contact</td><td><%=result1.getString("emergencyContact")%></td>
                                </tr>
                                <tr>
                                    <td>county</td><td><%=result1.getString("county")%></td>
                                </tr>
                                <tr>
                                    <td>  Sub County</td><td><%=result1.getString("subCounty")%></td>
                                </tr>
                                <tr>
                                    <td>  village</td><td><%=result1.getString("village")%> </td>
                                </tr>
                                </table>
                        </ul>
                        <%
                                }
                            }
                            catch(Exception ex1)
                            {
                                out.println("Exception:" +ex1.getMessage());
                                ex1.printStackTrace();
                            }

                        %>
                    </div>

                </div>
                <div class="col-md-7">
                    <nav class="side-menu">Reminders
                        <ul class="nav">
                            <li><a href="#"><span class="fa fa-user"></span> Visits</a></li>
                            <li class="active"><a href="#"><span class="fa fa-credit-card"></span> Billing</a></li>
                            <li><a href="user-drive.html"><span class="fa fa-th"></span> Diagnosis</a></li>
                            <li><a href="#"><span class="fa fa-clock-o"></span> clinics</a></li>
                        </ul>
                    </nav>
                    <hr/>
                    <h1> hospital Visits</h1>
                    <hr/>
                    <div class="drive-wrapper drive-list-view">
                        <div class="table-responsive drive-items-table-wrapper">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th class="type"></th>
                                    <th class="name truncate">visit Date</th>
                                    <th class="date">Attending Doctor</th>
                                    <th class="size">Diagnosis</th>
                                    <th class="size">Medication</th>
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