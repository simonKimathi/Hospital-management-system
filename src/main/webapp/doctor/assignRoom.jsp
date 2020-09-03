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
<head>
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
                    <li >
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
                    <li >
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
                    <li >
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

                    %>
                    <form id="addForm" method="post" action="${request.contextPath}/Hospital-management-system/assign?eId=<%=eId%>">
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


