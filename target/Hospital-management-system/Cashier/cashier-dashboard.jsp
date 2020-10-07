<%@ page import="java.time.LocalDate" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<!-- /Header -->
<%@ include file="../commonSections/CustomCashierHeader.jsp" %>
<!-- /Header -->
<style>
	.card {
		overflow:hidden;
	}

	.card-body .rotate {
		z-index: 8;
		float: right;
		height: 100%;
	}

	.card-body .rotate i {
		color: rgba(20, 20, 20, 0.15);
		position: absolute;
		left: 0;
		left: auto;
		right: -10px;
		bottom: 0;
		display: block;
		-webkit-transform: rotate(-44deg);
		-moz-transform: rotate(-44deg);
		-o-transform: rotate(-44deg);
		-ms-transform: rotate(-44deg);
		transform: rotate(-44deg);
	}

</style>
<!-- Breadcrumb -->
<div class="breadcrumb-bar">
	<div class="container-fluid">
		<div class="row align-items-center">
			<div class="col-md-12 col-12">
				<nav aria-label="breadcrumb" class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index-2.html">Cashier</a></li>
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
								<li class="active">
									<a href="cashier-dashboard.jsp">
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
								<li>
									<a href="searchPatient.jsp">
										<i class="fas fa-user-injured"></i>
										<span>search Patients</span>
									</a>
								</li>
								<li>
									<a href="searchInvoice.jsp">
										<i class="fas fa-user-injured"></i>
										<span>search invoice</span>
									</a>
								</li>
								<li>
									<a href="viewRooms.jsp">
										<i class="fas fa-user-injured"></i>
										<span>room assignments</span>
									</a>
								</li>
								<li>
									<a href="../sign_in/changePassword.jsp">
										<i class="fas fa-lock"></i>
										<span>Change Password</span>
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
						<div class="card dash-card">
							<div class="card-body">
								<div class="row">
									<div class="col-md-12 col-lg-4">
										<div class="dash-widget dct-border-rht">
											<div class="circle-bar circle-bar1">
												<div class="circle-graph1" data-percent="75">
													<img src="../assets/img/icon-01.png" class="img-fluid" alt="patient">
												</div>
											</div>
											<div class="dash-widget-info">
												<h6>Total Patient</h6>
												<h3>1500</h3>
												<p class="text-muted">Till Today</p>
											</div>
										</div>
									</div>

									<div class="col-md-12 col-lg-4">
										<div class="dash-widget dct-border-rht">
											<div class="circle-bar circle-bar2">
												<div class="circle-graph2" data-percent="65">
													<img src="../assets/img/icon-02.png" class="img-fluid" alt="Patient">
												</div>
											</div>
											<div class="dash-widget-info">
												<h6>Today Patients</h6>
												<h3>160</h3>
												<%
													LocalDate today=LocalDate.now();
												%>
												<p class="text-muted"><%=today%></p>
											</div>
										</div>
									</div>

									<div class="col-md-12 col-lg-4">
										<div class="dash-widget">
											<div class="circle-bar circle-bar3">
												<div class="circle-graph3" data-percent="50">
													<img src="../assets/img/icon-03.png" class="img-fluid" alt="Patient">
												</div>
											</div>
											<div class="dash-widget-info">
												<h6>Waiting Patients</h6>
												<h3>85</h3>
												<p class="text-muted"><%=today%></p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-xl-4 col-sm-6 py-2 ">
						<a href="addPatient.jsp">
							<div class="card bg-white text-black-50 h-100 w-100">
								<div class="card-body bg-white">
									<div class="rotate">
										<i class="fa fa-user fa-4x"></i>
									</div>
									<h4 class="">Add a Patient</h4>
								</div>
							</div>
						</a>
					</div>

					<div class="col-xl-4 col-sm-6 py-2 ">
						<a href="#">
							<div class="card bg-white text-white h-100 w-100">
								<div class="card-body bg-white">
									<div class="rotate">
										<i class="fa fa-search fa-4x"></i>
									</div>
									<h4 class="">Find A Patient</h4>
								</div>
							</div>
						</a>
					</div>

					<div class="col-xl-4 col-sm-6 py-2 ">
						<a href="#">
							<div class="card bg-white text-white h-100 w-100">
								<div class="card-body bg-white">
									<div class="rotate">
										<i class="fa fa-user fa-4x"></i>
									</div>
									<h4 class="">search invoice</h4>
								</div>
							</div>
						</a>
					</div>


					<%--<!-- Edit Details Modal -->
					<div class="modal fade " data-backdrop="false" id="add_patient" aria-hidden="true" role="dialog">
						<div class="modal-dialog modal-dialog-centered modal-lg" role="document" >
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title">Personal Details</h5>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<form  method="post" action="<%=request.getContextPath()%>/register">
										<div class="row form-row">
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>First Name</label>
													<input type="text" class="form-control" name="firstName">
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>sur Name</label>
													<input type="text"  class="form-control" name="surName">
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>last Name</label>
													<input type="text"  class="form-control" name="lastName">
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>National Id</label>
													<input type="text"  class="form-control" name="nationalId">
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>Gender</label>
													<select class="form-control select" name="gender">
														<option>Select</option>
														<option>Male</option>
														<option>Female</option>
													</select>
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>user name</label>
													<input type="text" class="form-control" name="userName">
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label>Date of Birth</label>
													<div class="cal-icon">
														<input type="date" class="form-control" name="DOB">
													</div>
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>Email </label>
													<input type="email" class="form-control" name="email">
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>Mobile</label>
													<input type="text" name="phoneNumber" class="form-control">
												</div>
											</div>
											<div class="col-12">
												<h5 class="form-title"><span>Address</span></h5>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label>Address</label>
													<input type="text" class="form-control" name="address">
												</div>
											</div>
											<div class="col-12">
												<h5 class="form-title"><span>Other details</span></h5>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>Designation</label>
													<input type="text" class="form-control" name="designation">
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label>Specialty</label>
													<input type="text" class="form-control" name="specialty">
												</div>
											</div>
											<div class="col-12 col-sm-6">
												<div class="form-group">
													<label>Role</label>
													<select class="form-control select" name="role">
														<option>Select</option>
														<option>Admin</option>
														<option>Doctor</option>
														<option>Cashier</option>
														<option>Pharmacist</option>
														<option>Lab</option>
													</select>
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<label>login Password</label>
													<input type="password" class="form-control" name="password">
												</div>
											</div>
										</div>
										<button type="submit" class="btn btn-primary btn-block">submit</button>
									</form>
								</div>
							</div>
						</div>
					</div>
					<!-- /Edit Details Modal -->
--%>
				</div>
			</div>




		</div>

	</div>

</div>
<!-- /Page Content -->

<%@ include file="../commonSections/customFooter.jsp" %>

</body>

</html>