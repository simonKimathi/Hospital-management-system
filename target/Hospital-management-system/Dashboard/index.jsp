<%@ page import="com.hospital.model.User" %><%
    User user = (User) session.getAttribute("loggedInUser");

    if(user ==null){
        response.sendRedirect("../signIn_register/temp.jsp");
    }
%>
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
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">welcome back&nbsp;</h1>
                <p id="current_time">loading current time...</p>
            </div>
            <div class="row">
                <!-- patients available -->
                <div class="col-xl-4 col-md-6 mb-2">
                    <div class="card border-success text-white bg-primary mb-3">
                        <div class="card-header">Patients Analysis</div>
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="card-title text-xs font-weight-bold text-grey text-uppercase mb-1">active patients Today</div>
                                    <div class=" card-text h5 mb-0 font-weight-bold text-gray-800"><%=application.getAttribute("patientsCount")%></div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- patients available -->
                <div class="col-xl-4 col-md-6 mb-2">
                    <div class="card border-primary text-white bg-success mb-3">
                        <div class="card-header">Doctors Analysis</div>
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="card-title text-xs font-weight-bold text-grey text-uppercase mb-1">active doctors</div>
                                    <div class=" card-text h5 mb-0 font-weight-bold text-gray-800"><%=application.getAttribute("doctorsCount")%></div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-list-ul fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- patients available -->
                <div class="col-xl-4 col-md-6 mb-2">
                    <div class="card border-danger text-white bg-info mb-3">
                        <div class="card-header">Room Analysis</div>
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="card-title text-xs font-weight-bold text-grey text-uppercase mb-1">Room available</div>
                                    <div class=" card-text h5 mb-0 font-weight-bold text-gray-800"><%=application.getAttribute("roomsCount")%></div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-file-alt fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row box">
                <a href="<%=request.getContextPath()%>/Patient/addPatient.jsp" class=" nav-link col-md-4 text-center"> <span class="fa-5x fa-user-plus fas"> </span> <h3><br>Register a patient</h3> </a>
                <a href="<%=request.getContextPath()%>/Patient/viewPatients.jsp" class="nav-link col-md-4 text-center"> <span class=" fa-5x fa-search fas"> </span> <h3><br>view patients</h3> </a>
                <a href="<%=request.getContextPath()%>/doctor/addDoctor.jsp" class="nav-link col-md-4 text-center"> <span class="fa-5x fa-hand-holding-medical fas"> </span> <h3><br>Register A doctor</h3> </a>
            </div>
            <div class="row box">
                <a href="<%=request.getContextPath()%>/doctor/viewDoctors.jsp" class="nav-link col-md-4 text-center"> <span class=" fa-5x fa-medkit fas"> </span> <h3><br>view doctors</h3> </a>
                <a href="<%=request.getContextPath()%>/room/addRoom.jsp" class="nav-link col-md-4 text-center"> <span class="fa-5x fa-receipt fas"> </span> <h3><br>add a room</h3> </a>
                <a href="<%=request.getContextPath()%>/room/viewRooms.jsp" class="nav-link col-md-4 text-center"> <span class="fa-5x fa-file-alt fas"> </span> <h3><br>view rooms</h3> </a>
            </div>

            <!--<div class="row box">
                <a href="" class=" nav-link col-md-3 text-center"> <span class="fa-5x fa-user-plus fas"> </span> <h3><br>Register a patient</h3> </a>
                <a href="#" class="nav-link col-md-3 text-center"> <span class=" fa-5x fa-search fas"> </span> <h3><br>Find a patient</h3> </a>
                <a href="#" class="nav-link col-md-3 text-center"> <span class="fa-5x fa-list-ul fas"> </span> <h3><br>active visits</h3> </a>
                <a href="#" class="nav-link col-md-3 text-center"> <span class="fa fa-users fa-5x"> </span> <h3><br>Admissions</h3> </a>
            </div>
            <div class="row">
                <a href="#" class="nav-link col-md-3 text-center"> <span class="fa-5x fa-heartbeat fas"></span> <h3><br>capture Vitals</h3> </a>
                <a href="#" class="nav-link col-md-3 text-center"> <span class="fa-5x fa-hand-holding-medical fas"> </span> <h3><br>find A doctor</h3> </a>
                <a href="#" class="nav-link col-md-3 text-center"> <span class="fa-5x fa-folder-open fas"> </span> <h3><br>reports</h3> </a>
                <a href="#" class="nav-link col-md-3 text-center"> <span class="fa-5x fa-users-cog fas"> </span> <h3><br>User Management</h3> </a>
            </div>
            <div class="row">
                <a href="#" class="nav-link col-md-3 text-center"> <span class="fa-5x fa-file-invoice-dollar fas"></span> <h3><br>billing</h3> </a>
                <a href="#" class="nav-link col-md-3 text-center"> <span class="fa-5x fa-receipt fas"> </span> <h3><br>Find an invoice</h3> </a>
                <a href="#" class="nav-link col-md-3 text-center"> <span class="fa-5x fa-file-alt fas"> </span> <h3><br>Inventory Control</h3> </a>
                <a href="#" class="nav-link col-md-3 text-center"> <span class="fa-5x fa-cogs fas"> </span> <h3><br>System administration</h3> </a>
            </div>-->
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

<%-- added footer--%>
<%@ include file="../commonSections/footer.jsp" %>
</body>
</html>