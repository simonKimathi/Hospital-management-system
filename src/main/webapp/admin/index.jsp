<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
	<!-- /Header -->
	<%@ include file="../commonSections/customAdminHeader.jsp" %>
	<!-- /Header -->
			
			<!-- Sidebar -->
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
					<div id="sidebar-menu" class="sidebar-menu">
						<ul>
							<li class="menu-title"> 
								<span>Main</span>
							</li>
							<li class="active"> 
								<a href="index.jsp"><i class="fe fe-home"></i> <span>Dashboard</span></a>
							</li>
							<li> 
								<a href="doctor-list.jsp"><i class="fe fe-user-plus"></i> <span>Doctors</span></a>
							</li>
							<li> 
								<a href="patient-list.jsp"><i class="fe fe-user"></i> <span>Patients</span></a>
							</li>
							<li>
								<a href="patient-list.jsp"><i class="fe fe-user"></i> <span>Rooms</span></a>
							</li>
							<li>
								<a href="Patient-visits.jsp"><i class="fe fe-star-o"></i> <span>Patients visits</span></a>
							</li>
							<li> 
								<a href="transactions.jsp"><i class="fe fe-activity"></i> <span>Transactions</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="fe fe-document"></i> <span> Reports</span> <span class="menu-arrow"></span></a>
								<ul style="display: none;">
									<li><a href="invoice-report.jsp">Invoice Reports</a></li>
								</ul>
							</li>
							<li> 
								<a href="profile.jsp"><i class="fe fe-user-plus"></i> <span>Profile</span></a>
							</li>
							<li>
								<a href="manageUsers.jsp"><i class="fe fe-document"></i> <span> Manage Users </span></a>
							</li>
						</ul>
					</div>
                </div>
            </div>
			<!-- /Sidebar -->
			
			<!-- Page Wrapper -->
            <div class="page-wrapper">
			
                <div class="content container-fluid">
					
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">Welcome <%=user.getUserName()%></h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item active">Dashboard</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->

					<div class="row">
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card">
								<div class="card-body">
									<div class="dash-widget-header">
										<span class="dash-widget-icon text-primary border-primary">
											<i class="fe fe-users"></i>
										</span>
										<div class="dash-count">
											<h3>
												<div id="patient_count">

												</div>
											</h3>
										</div>
									</div>
									<div class="dash-widget-info">
										<h6 class="text-muted">Total Patients</h6>
										<div class="progress progress-sm">
											<div class="progress-bar bg-primary w-50"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card">
								<div class="card-body">
									<div class="dash-widget-header">
										<span class="dash-widget-icon text-success">
											<i class="fe fe-users"></i>
										</span>
										<div class="dash-count">
											<h3>
												<div id="patient_today_count">
												</div>
											</h3>
										</div>
									</div>
									<div class="dash-widget-info">
										
										<h6 class="text-muted">Total Patients today</h6>
										<div class="progress progress-sm">
											<div class="progress-bar bg-success w-50"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card">
								<div class="card-body">
									<div class="dash-widget-header">
										<span class="dash-widget-icon text-danger border-danger">
											<i class="fe fe-calendar"></i>
										</span>
										<div class="dash-count">
											<h3>
												<div id="visit_today_count">
												</div>
											</h3>
										</div>
									</div>
									<div class="dash-widget-info">
										
										<h6 class="text-muted">Active visits</h6>
										<div class="progress progress-sm">
											<div class="progress-bar bg-danger w-50"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card">
								<div class="card-body">
									<div class="dash-widget-header">
										<span class="dash-widget-icon text-warning border-warning">
											<i class="fe fe-key"></i>
										</span>
										<div class="dash-count">
											<h3> 1
											</h3>
										</div>
									</div>
									<div class="dash-widget-info">
										
										<h6 class="text-muted">Active Users</h6>
										<div class="progress progress-sm">
											<div class="progress-bar bg-warning w-50"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 d-flex">
						
							<!-- doctors -->
							<div class="card card-table flex-fill">
								<div class="card-header">
									<h4 class="card-title">Doctors List</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive" >
										<div id="doctorsTable">
											...loading
										</div>
									</div>
								</div>
							</div>
							<!-- /Recent Orders -->
							
						</div>
						<div class="col-md-6 d-flex">
						
							<!-- Patints -->
							<div class="card  card-table flex-fill">
								<div class="card-header">
									<h4 class="card-title">Patients List</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive" >
										<div id="patientsTable">
											...loading
										</div>
									</div>
								</div>
							</div>
							<!-- /Feed Activity -->
							
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
						
							<!-- Recent Orders -->
							<div class="card card-table">
								<div class="card-header">
									<h4 class="card-title">Visits</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive" >
										<div id="visitsTable">
											...loading
										</div>
									</div>
								</div>
							</div>
							<!-- /Recent Orders -->
							
						</div>
					</div>
					
				</div>			
			</div>
			<!-- /Page Wrapper -->
		
        </div>
		<!-- /Main Wrapper -->


		<script src="../js/adminIndex.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="../adminAssets/js/popper.min.js"></script>
        <script src="../assets/js/bootstrap.min.js"></script>
		
		<!-- Slimscroll JS -->
        <script src="../adminAssets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		
		<script src="../adminAssets/plugins/raphael/raphael.min.js"></script>
		<script src="../adminAssets/plugins/morris/morris.min.js"></script>
		<script src="../adminAssets/js/chart.morris.js"></script>
		
		<!-- Custom JS -->
		<script  src="../adminAssets/js/script.js"></script>


	<!-- jQuery -->
	<script src="../adminAssets/js/jquery-3.2.1.min.js"></script>

	<%--clickable table row js--%>
	<script>

		$.get( "http://localhost:8080/Hospital-management-system/rest/patient/getCount", function( data ) {
			$('#patient_count').html(data);
		});

		$.get( "http://localhost:8080/Hospital-management-system/rest/patient/getTodayCount", function( data ) {
			$('#patient_today_count').html(data);
		});

		$.get( "http://localhost:8080/Hospital-management-system/rest/patientsVisits/getTodayCount", function( data ) {
			$('#visit_today_count').html(data);
		});

		$(document).ready(function($) {
			$(".table-row").click(function() {
				window.document.location = $(this).data("href");
			});
		});
	</script>

		
    </body>

</html>