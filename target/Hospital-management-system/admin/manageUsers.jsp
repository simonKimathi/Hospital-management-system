<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<!-- Header -->
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
				<li >
					<a href="index.jsp"><i class="fe fe-home"></i> <span>Dashboard</span></a>
				</li>
				<li>
					<a href="doctor-list.jsp"><i class="fe fe-user-plus"></i> <span>Doctors</span></a>
				</li>
				<li>
					<a href="patient-list.jsp"><i class="fe fe-user"></i> <span>Patients</span></a>
				</li>
				<li>
					<a href="viewRooms.jsp"><i class="fe fe-user"></i> <span>Rooms</span></a>
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
				<li class="active">
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
				<div class="col">
					<h3 class="page-title">Manage Users</h3>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.jsp">Admin</a></li>
						<li class="breadcrumb-item active">Manage Users</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /Page Header -->

		<div class="row">
			<div class="col-md-12">

				<div class="tab-content profile-tab-cont">

					<!-- Personal Details Tab -->
					<div >

						<!-- Personal Details -->
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-body">
										<h5 class="card-title d-flex justify-content-between">
											<span>user accounts</span>
											<a class="btn btn-primary" data-toggle="modal" href="#add_user"><i class="fa fa-edit mr-1"></i>Add User</a>
										</h5>
										<div class="table-responsive" >
											<div id="module-content">
												...loading
											</div>
										</div>

									</div>
								</div>

								<!-- Edit Details Modal -->
								<div class="modal fade" id="add_user" aria-hidden="true" role="dialog">
									<div class="modal-dialog modal-dialog-centered" role="document" >
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
																	<option>Reception</option>
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

							</div>


						</div>
						<!-- /Personal Details -->

					</div>
					<!-- /Personal Details Tab -->


				</div>
			</div>
		</div>

	</div>
</div>
<!-- /Page Wrapper -->

</div>
<!-- /Main Wrapper -->

<%--custom js--%>
<script src="../js/User.js"></script>

<!-- jQuery -->
<script src="../adminAssets/js/jquery-3.2.1.min.js"></script>

<!-- Bootstrap Core JS -->
<script src="../adminAssets/js/popper.min.js"></script>
<script src="../adminAssets/js/bootstrap.min.js"></script>

<!-- Slimscroll JS -->
<script src="../adminAssets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom JS -->
<script  src="../adminAssets/js/script.js"></script>
<script>
	$(document).ready(function($) {
		$(".table-row").click(function() {
			window.document.location = $(this).data("href");
		});
	});
</script>

</body>

</html>