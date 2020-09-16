<%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 03/09/2020
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<nav class="col-md-2 d-none d-md-block bg-light sidebar" style="padding-top: 70px">
    <div class="text-dark">
        <h3>Quick Links</h3>
    </div>
                    <a href="<%=request.getContextPath()%>"><i class="fa fa-fw fa-home"></i> Home</a>
                    <a href="<%=request.getContextPath()%>/Patient/addPatient.jsp"><i class="fa fa-fw fa-wrench"></i> add patient</a>
                    <a href="<%=request.getContextPath()%>/Patient/viewPatients.jsp"><i class="fa fa-fw fa-user"></i> view patients</a>
                    <a href="<%=request.getContextPath()%>/doctor/addDoctor.jsp"><i class="fa fa-fw fa-envelope"></i> add a doctor</a>
                    <a href="<%=request.getContextPath()%>/doctor/viewDoctors.jsp"><i class="fa-lg fa-medkit fas"></i> view doctors</a>
                    <a href="<%=request.getContextPath()%>/room/addRoom.jsp"><i class="fa fa-fw fa-eye"></i> add a room</a>
                    <a href="<%=request.getContextPath()%>/room/viewRooms.jsp"><i class="fa fa-fw fa-eye"></i> view rooms</a>

        <%--<div class="treeview-animated w-5 border">
        <h6 class="pt-3 pl-3">Folders</h6>
        <hr>
        <ul class="treeview-animated-list mb-3">
            <li class="treeview-animated-items">
                <a class="closed">
                    <i class="fas fa-angle-right"></i>
                    <span><i class="far fa-envelope-open ic-w mx-1"></i>Mail</span>
                </a>
                <ul class="nested">
                    <li>
                        <div class="treeview-animated-element"><i class="far fa-bell ic-w mr-1"></i>Offers</div>
                    </li>
                    <li>
                        <div class="treeview-animated-element"><i class="far fa-address-book ic-w mr-1"></i>Contacts</div>
                    </li>
                    <li class="treeview-animated-items">
                        <a class="closed"><i class="fas fa-angle-right"></i>
                            <span><i class="far fa-calendar-alt ic-w mx-1"></i>Calendar</span></a>
                        <ul class="nested">
                            <li>
                                <div class="treeview-animated-element"><i class="far fa-clock ic-w mr-1"></i>Deadlines</div>
                            </li>
                            <li>
                                <div class="treeview-animated-element"><i class="fas fa-users ic-w mr-1"></i>Meetings</div>
                            </li>
                            <li>
                                <div class="treeview-animated-element"><i class="fas fa-basketball-ball ic-w mr-1"></i>Workouts</div>
                            </li>
                            <li>
                                <div class="treeview-animated-element"><i class="fas fa-mug-hot ic-w mr-1"></i>Events</div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="treeview-animated-items">
                <a class="closed">
                    <i class="fas fa-angle-right"></i>
                    <span><i class="far fa-folder-open ic-w mx-1"></i>Inbox</span>
                </a>
                <ul class="nested">
                    <li>
                        <div class="treeview-animated-element"><i class="far fa-folder-open ic-w mr-1"></i>Admin</div>
                    </li>
                    <li>
                        <div class="treeview-animated-element"><i class="far fa-folder-open ic-w mr-1"></i>Corporate</div>
                    </li>
                    <li>
                        <div class="treeview-animated-element"><i class="far fa-folder-open ic-w mr-1"></i>Finance</div>
                    </li>
                    <li>
                        <div class="treeview-animated-element"><i class="far fa-folder-open ic-w mr-1"></i>Other</div>
                    </li>
                </ul>
            </li>
            <li class="treeview-animated-items">
                <a class="closed">
                    <i class="fas fa-angle-right"></i>
                    <span><i class="far fa-gem mx-1"></i>Favourites</span>
                </a>
                <ul class="nested">
                    <li>
                        <div class="treeview-animated-element"><i class="fas fa-pepper-hot ic-w mr-1"></i>Restaurants</div>
                    </li>
                    <li>
                        <div class="treeview-animated-element"><i class="far fa-eye ic-w mr-1"></i>Places</div>
                    </li>
                    <li>
                        <div class="treeview-animated-element"><i class="fas fa-gamepad ic-w mr-1"></i>Games</div>
                    </li>
                    <li>
                        <div class="treeview-animated-element"><i class="fas fa-cocktail ic-w mr-1"></i>Coctails</div>
                    </li>
                    <li>
                        <div class="treeview-animated-element"><i class="fas fa-pizza-slice ic-w mr-1"></i>Food</div>
                    </li>
                </ul>
            </li>
            <li>
                <div class="treeview-animated-element"><i class="far fa-comment ic-w mr-1"></i>Notes</div>
            </li>
            <li>
                <div class="treeview-animated-element"><i class="fas fa-cogs ic-w mr-1"></i>Settings</div>
            </li>
            <li>
                <div class="treeview-animated-element"><i class="fas fa-desktop ic-w mr-1"></i>Devices</div>
            </li>
            <li>
                <div class="treeview-animated-element"><i class="fas fa-trash-alt ic-w mr-1"></i>Deleted Items</div>
            </li>
        </ul>
        </div>--%>
        <%--  <div class="panel-group">
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
          </div>--%>
</nav>
