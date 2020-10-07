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
					<li>
						<a href="index.jsp"><i class="fe fe-home"></i> <span>Dashboard</span></a>
					</li>
					<li>
						<a href="doctor-list.html"><i class="fe fe-user-plus"></i> <span>Doctors</span></a>
					</li>
					<li>
						<a href="patient-list.jsp"><i class="fe fe-user"></i> <span>Patients</span></a>
					</li>
					<li>
						<a href="reviews.html"><i class="fe fe-star-o"></i> <span>Patients visits</span></a>
					</li>
					<li>
						<a href="transactions-list.html"><i class="fe fe-activity"></i> <span>Transactions</span></a>
					</li>
					<li class="submenu">
						<a href="#"><i class="fe fe-document"></i> <span> Reports</span> <span class="menu-arrow"></span></a>
						<ul style="display: none;">
							<li><a href="invoice-report.html">Invoice Reports</a></li>
						</ul>
					</li>
					<li class="active">
						<a href="profile.jsp"><i class="fe fe-user-plus"></i> <span>Profile</span></a>
					</li>
					<li >
						<a href="#"><i class="fe fe-document"></i> <span> Manage Users </span></a>

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
								<h3 class="page-title">Profile</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
									<li class="breadcrumb-item active">Profile</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="row">
						<div class="col-md-12">
							<div class="profile-header">
								<div class="row align-items-center">
									<div class="col-auto profile-image">
										<a href="#">
											<img class="rounded-circle" alt="User Image" src="assets/img/profiles/avatar-01.jpg">
										</a>
									</div>
									<div class="col ml-md-n2 profile-user-info">
										<h4 class="user-name mb-0"><%=user.getBioData().getFirstName()%> <%=user.getBioData().getSurName()%> <%=user.getBioData().getLastName()%></h4>
										<h6 class="text-muted"><%=user.getUserName()%></h6>
										<h6 class="about-text"></br><%=user.getRole()%></h6>
									</div>
									<div class="col-auto profile-btn">
										
										<a href="#" class="btn btn-primary">
											Edit
										</a>
									</div>
								</div>
							</div>
							<div class="profile-menu">
								<ul class="nav nav-tabs nav-tabs-solid">
									<li class="nav-item">
										<a class="nav-link active" data-toggle="tab" href="#per_details_tab">About</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#password_tab">Password</a>
									</li>
								</ul>
							</div>	
							<div class="tab-content profile-tab-cont">
								
								<!-- Personal Details Tab -->
								<div class="tab-pane fade show active" id="per_details_tab">
								
									<!-- Personal Details -->
									<div class="row">
										<div class="col-lg-12">
											<div class="card">
												<div class="card-body">
													<h5 class="card-title d-flex justify-content-between">
														<span>Personal Details</span> 
														<a class="edit-link" data-toggle="modal" href="#edit_personal_details"><i class="fa fa-edit mr-1"></i>Edit</a>
													</h5>
													<div class="row">
														<p class="col-sm-2 text-muted text-sm-right mb-0 mb-sm-3">Name</p>
														<p class="col-sm-10"><%=user.getBioData().getFirstName()%> <%=user.getBioData().getSurName()%> <%=user.getBioData().getLastName()%></p>
													</div>
													<div class="row">
														<p class="col-sm-2 text-muted text-sm-right mb-0 mb-sm-3">User name</p>
														<p class="col-sm-10">@<%=user.getUserName()%></p>
													</div>
													<div class="row">
														<p class="col-sm-2 text-muted text-sm-right mb-0 mb-sm-3">User Role</p>
														<p class="col-sm-10"><%=user.getRole()%></p>
													</div>
												</div>
											</div>
											
											<!-- Edit Details Modal -->
											<div class="modal fade" id="edit_personal_details" aria-hidden="true" role="dialog">
												<div class="modal-dialog modal-dialog-centered" role="document" >
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title">Personal Details</h5>
															<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body">
															<form action="#">
																<div class="row form-row">
																	<div class="col-12 ">
																		<div class="form-group">
																			<label>Name</label>
																			<input type="text" class="form-control" value="<%=user.getBioData().getFirstName()%>">
																		</div>
																	</div>
																	<div class="col-12">
																		<div class="form-group">
																			<label>UserName</label>
																			<input type="text" class="form-control" value="<%=user.getUserName()%>">
																		</div>
																	</div>
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<select id="rType" class="form-control" 0>
																				<option>Admin</option>
																				<option>Doctor</option>
																				<option>Cashier</option>
																				<option>Pharmacist</option>
																				<option>Lab</option>
																			</select>
																		</div>
																	</div>
																</div>

																<button type="submit" class="btn btn-primary btn-block" id="saveProfile">Save Changes</button>
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
								
								<!-- Change Password Tab -->
								<div id="password_tab" class="tab-pane fade">

									<div class="card">
										<div class="card-body">
											<h5 class="card-title">Change Password</h5>
											<div class="row">
												<div class="col-md-10 col-lg-6">
													<form action="#">
														<div class="form-group">
															<label>Old Password</label>
															<input type="password" class="form-control">
														</div>
														<div class="form-group">
															<label>New Password</label>
															<input type="password" class="form-control">
														</div>
														<div class="form-group">
															<label>Confirm Password</label>
															<input type="password" class="form-control">
														</div>
														<button class="btn btn-primary" type="submit" id="changePass">Save Changes</button>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- /Change Password Tab -->
								
							</div>
						</div>
					</div>
				
				</div>			
			</div>
			<!-- /Page Wrapper -->
		
        </div>
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <script src="../adminAssets/js/jquery-3.2.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="../adminAssets/js/popper.min.js"></script>
        <script src="../adminAssets/js/bootstrap.min.js"></script>
		
		<!-- Slimscroll JS -->
        <script src="../adminAssets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		
		<!-- Custom JS -->
		<script  src="../adminAssets/js/script.js"></script>
		
    </body>

</html>