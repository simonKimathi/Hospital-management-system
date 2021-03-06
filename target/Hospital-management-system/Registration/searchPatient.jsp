<%@ page import="java.time.LocalDate" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<!-- /Header -->
<%@ include file="../commonSections/CustomRegistrationHeader.jsp" %>


<!-- /Header -->
<!-- Breadcrumb -->
<div class="breadcrumb-bar">
	<div class="container-fluid">
		<div class="row align-items-center">
			<div class="col-md-12 col-12">
				<nav aria-label="breadcrumb" class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="registration-dashboard.jsp">home</a></li>
						<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
					</ol>
				</nav>
				<h2 class="breadcrumb-title">Dashboard</h2>
			</div>
		</div>
	</div>
</div>
<!-- /Breadcrumb -->

<!-- Page Content -->
<div class="content">
	<div class="container-fluid">

		<div class="row">
			<div class="col-md-5 col-lg-4 col-xl-3 theiaStickySidebar">

				<!-- Profile Sidebar -->
				<div class="profile-sidebar">
					<div class="widget-profile pro-widget-content">
						<div class="profile-info-widget">
							<a href="#" class="booking-doc-img">
								<img src="assets/img/doctors/doctor-thumb-02.jpg" alt="User Image">
							</a>
							<div class="profile-det-info">
								<h3><%=user.getBioData().getFirstName()%> <%=user.getBioData().getSurName()%> <%=user.getBioData().getLastName()%></h3>

                                <div class="patient-details">
                                    <h5 class="mb-0"><%=user.getDesignation()%> - <%=user.getSpecialty()%></h5>
                                </div>
							</div>
						</div>
					</div>
					<div class="dashboard-widget">
						<nav class="dashboard-menu">
							<ul>
								<li >
									<a href="registration-dashboard.jsp">
										<i class="fas fa-columns"></i>
										<span>Dashboard</span>
									</a>
								</li>
								<li>
									<a href="addPatient.jsp">
										<i class="fas fa-user-injured"></i>
										<span>Add Patient</span>
									</a>
								</li>
								<li class="active">
									<a href="searchPatient.jsp">
										<i class="fas fa-user-injured"></i>
										<span>search Patients</span>
									</a>
								</li>
								<li>
									<a href="viewRooms.jsp">
										<i class="fas fa-user-injured"></i>
										<span>room assignments</span>
									</a>
								</li>
								<li>
									<a href="profile.jsp">
										<i class="fas fa-lock"></i>
										<span>My profile</span>
									</a>
								</li>
								<li>
									<a href="../sign_in/sign_in.jsp">
										<i class="fas fa-sign-out-alt"></i>
										<span>Logout</span>
									</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
				<!-- /Profile Sidebar -->

			</div>
			<div class="col-md-7 col-lg-8 col-xl-9">


				<div class="row">
					<div class="col-md-12">
						<div class="row" style="margin-bottom: 15px">
							<div class="col-md-8">
								<div class="topnav">
									<div class="search-container">
										<form action="#">
											<input type="text" placeholder="Search by name or id .." id="search-input">
											<button type="submit" id="search_patient_button"><i class="fa fa-search"></i></button>
										</form>
									</div>
								</div>
							</div>

						</div>

						<div class="row">
							<div class="col-sm-12">
								<div class="card">
									<div class="card-body">
										<div class="table-responsive">
											<div class="table-responsive">
												<div id="module-content">
													search data
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>




					</div>
				</div>
			</div>




		</div>

	</div>

</div>
<!-- /Page Content -->

<%@ include file="../commonSections/customFooter.jsp" %>



</body>

</html>