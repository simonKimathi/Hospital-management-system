<%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 03/09/2020
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<nav class="col-md-2 d-none d-md-block bg-light sidebar">
    <div class="panel-group">
        <div class="panel panel-primary">
            <div class="panel-heading" style="padding-top: 10px">
                <h5 class="panel-title">Quick links</h5>
            </div>
            <div class="panel-body">
                <div class="sidebar-sticky">
                    <ul class="nav flex-column" id="myUL">
                        <li >
                            <span class="caret"> Patients </span>
                            <ul class="nested">
                                <a href="<%=request.getContextPath()%>/Patient/addPatient.jsp">
                                    <li><i class="far fa-folder-open ic-w mr-1"></i>add patient</li>
                                </a>
                                <a href="<%=request.getContextPath()%>/Patient/viewPatients.jsp">
                                    <li><i class="far fa-folder-open ic-w mr-1"></i>view patients</li>
                                </a>
                            </ul>

                        </li>
                        <li >
                            <span class="caret"> doctors </span>
                            <ul class="nested">
                                <a href="<%=request.getContextPath()%>/doctor/addDoctor.jsp">
                                    <li><i class="fa-lg fa-user-md fas"></i>add doctor</li>
                                </a>
                                <a href="<%=request.getContextPath()%>/doctor/viewDoctors.jsp">
                                    <li><i class="fa-lg fa-user-md fas"></i>view doctors</li>
                                </a>
                            </ul>

                        </li>
                        <li >
                            <span class="caret"> Rooms </span>
                            <ul class="nested">
                                <a href="<%=request.getContextPath()%>/room/addRoom.jsp">
                                    <li><i class="fa-lg fa-notes-medical fas"></i>add room</li>
                                </a>
                                <a href="<%=request.getContextPath()%>/room/viewRooms.jsp">
                                    <li><i class="fa-lg fa-medkit fas"></i>view rooms</li>
                                </a>
                            </ul>

                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>
