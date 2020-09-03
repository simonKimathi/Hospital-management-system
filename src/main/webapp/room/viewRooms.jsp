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
<head>

    <script src="../js/app.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>home</title>
    <!-- Bootstrap core CSS -->
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../Stylesheet/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.1/css/all.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

    /* Remove default bullets */
    ul, #myUL {
        list-style-type: none;
    }

    /* Remove margins and padding from the parent ul */
    #myUL {
        margin: 0;
        padding: 0;
    }

    /* Style the caret/arrow */
    .caret {
        cursor: pointer;
        user-select: none; /* Prevent text selection */
    }

    /* Create the caret/arrow with a unicode, and style it */
    .caret::before {
        content: "\25B6";
        color: black;
        display: inline-block;
        margin-right: 6px;
    }

    /* Rotate the caret/arrow icon when clicked on (using JavaScript) */
    .caret-down::before {
        transform: rotate(90deg);
    }

    /* Hide the nested list */
    .nested {
        display: none;
    }

    /* Show the nested list when the user clicks on the caret/arrow (with JavaScript) */
    .active {
        display: block;
    }
    /*table tr td:last-child {
        border: none;
    }*/

</style>
</head>
<body>
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
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column" id="myUL">
                    <li class="nav-item">
                        <a class="nav-link active" href="http://localhost:8080/Hospital-management-system"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home">
                            <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                            <polyline points="9 22 9 12 15 12 15 22"></polyline>
                        </svg>
                            Quick links<span class="sr-only">(current)</span></a>
                    </li>
                    <li style="padding: 5px">
                        <span class="caret"> Patients </span>
                        <ul class="nested">
                            <a href="../Patient/addPatient.jsp">
                                <li><i class="far fa-folder-open ic-w mr-1"></i>add patient</li>
                            </a>
                            <a href="../Patient/viewPatients.jsp">
                                <li><i class="far fa-folder-open ic-w mr-1"></i>view patients</li>
                            </a>
                        </ul>

                    </li>
                    <li style="padding: 5px">
                        <span class="caret"> doctors </span>
                        <ul class="nested">
                            <a href="../doctor/addDoctor.jsp">
                                <li><i class="fa-lg fa-user-md fas"></i>add doctor</li>
                            </a>
                            <a href="../doctor/viewDoctors.jsp">
                                <li><i class="fa-lg fa-user-md fas"></i>view doctors</li>
                            </a>
                        </ul>

                    </li>
                    <li style="padding: 5px">
                        <span class="caret"> Rooms </span>
                        <ul class="nested">
                            <a href="../room/addRoom.jsp">
                                <li><i class="fa-lg fa-notes-medical fas"></i>add room</li>
                            </a>
                            <a href="../room/viewRooms.jsp">
                                <li><i class="fa-lg fa-medkit fas"></i>view rooms</li>
                            </a>
                        </ul>

                    </li>
                </ul>
            </div>
        </nav>
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4" style="padding: 10px">
            <%--<div id="module-content"> table loading...</div>--%>

            <table class = "table table-bordered table-stripped table-condensed" align = "center" >
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
                        while(result.next())
                        {
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

<script src="../js/app.js"></script>
<script src="../js/room.js"></script>
<script>
    var toggler = document.getElementsByClassName("caret");
    var i;

    for (i = 0; i < toggler.length; i++) {
        toggler[i].addEventListener("click", function() {
            this.parentElement.querySelector(".nested").classList.toggle("active");
            this.classList.toggle("caret-down");
        });
    }
</script>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/popper.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<!-- Icons -->
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>feather.replace()</script>
<script>
    var d = new Date();
    document.getElementById("current_time").innerHTML = d.toString();

</script>
</body>
</html>

