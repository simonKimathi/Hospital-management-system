<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<!-- /Header -->
<%@ include file="../commonSections/CustomDoctorHeader.jsp" %>
<!-- /Header -->
			
			<!-- Breadcrumb -->
			<div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-12 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index-2.html">Patients</a></li>
									<li class="breadcrumb-item active" aria-current="page">waiting Patients</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Pending Patients</h2>
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
											<h3>Dr. <%=user.getBioData().getFirstName()%> <%=user.getBioData().getLastName()%></h3>
											
											<div class="patient-details">
												<h5 class="mb-0">BDS, <%=user.getSpecialty()%></h5>
											</div>
										</div>
									</div>
								</div>
								<div class="dashboard-widget">
									<nav class="dashboard-menu">
										<ul>
											<li>
												<a href="doctor-dashboard.jsp">
													<i class="fas fa-columns"></i>
													<span>Dashboard</span>
												</a>
											</li>
											<li class="active">
												<a href="my-patients.jsp">
													<i class="fas fa-user-injured"></i>
													<span>Pending Patients</span>
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
						
							<div class="row row-grid">
								<div class="col-md-6 col-lg-4 col-xl-3">
									<div class="card widget-profile pat-widget-profile">
										<div class="card-body">
											<div class="pro-widget-content">
												<div class="profile-info-widget">
													<a href="patient-profile.html" class="booking-doc-img">
														<img src="assets/img/patients/patient.jpg" alt="User Image">
													</a>
													<div class="profile-det-info">
														<h3><a href="patient-profile.html">Richard Wilson</a></h3>
														
														<div class="patient-details">
															<h5><b>Patient ID :</b> P0016</h5>
															<h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> Alabama, USA</h5>
														</div>
													</div>
												</div>
											</div>
											<div class="patient-info">
												<ul>
													<li>Phone <span>+1 952 001 8563</span></li>
													<li>Age <span>38 Years, Male</span></li>
													<li>Blood Group <span>AB+</span></li>
												</ul>
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
   

		   
		</div>
		<!-- /Main Wrapper -->
	  
		<!-- jQuery -->
		<script src="assets/js/jquery.min.js"></script>
		
		<!-- Bootstrap Core JS -->
		<script src="assets/js/popper.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		
		<!-- Sticky Sidebar JS -->
        <script src="assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
        <script src="assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/script.js"></script>
		
	</body>

<!-- doccure/my-patients.html  30 Nov 2019 04:12:09 GMT -->
</html>