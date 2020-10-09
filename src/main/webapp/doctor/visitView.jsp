<%@ page import="java.time.LocalDate" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<!-- /Header -->
<%@ include file="../commonSections/CustomCashierHeader.jsp" %>
<!-- /Header -->
<!-- Breadcrumb -->
<div class="breadcrumb-bar">
	<div class="container-fluid">
		<div class="row align-items-center">
			<div class="col-md-12 col-12">
				<nav aria-label="breadcrumb" class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="doctor-dashboard.jsp">Cashier</a></li>
						<li class="breadcrumb-item active" aria-current="page">visit view</li>
					</ol>
				</nav>
				<h2 class="breadcrumb-title">visit view</h2>
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
								<img src="../assets/img/doctors/doctor-thumb-02.jpg" alt="User Image">
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
						<ul class="dashboard-menu">
							<li >
								<a href="doctor-dashboard.jsp">
									<i class="fas fa-columns"></i>
									<span>Dashboard</span>
								</a>
							</li>
							<li>
								<a href="my-patients.jsp">
									<i class="fas fa-user-injured"></i>
									<span>Pending Patients</span>
								</a>
							</li>
							<li class="active">
								<a href="searchPatient.jsp">
									<i class="fas fa-eye"></i>
									<span>Search patient</span>
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
											<input type="text" placeholder="Search.." id="search-input">
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