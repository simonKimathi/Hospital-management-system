

<%@ page import="java.time.LocalDate" %>
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
						<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
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
								<img src="../assets/img/doctors/doctor-thumb-02.jpg" alt="User Image">
							</a>
							<div class="profile-det-info">
								<h3>Dr. <%=user.getBioData().getFirstName()%> <%=user.getBioData().getSurName()%> <%=user.getBioData().getLastName()%></h3>

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
								<li>
									<a href="searchPatient.jsp">
										<i class="fas fa-eye"></i>
										<span>Search patient</span>
									</a>
								</li>
								<li class="active">
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
												<form method="post" action="<%=request.getContextPath()%>/changePassword">
													<div class="form-group" hidden>
														<label>User Name</label>
														<input type="text" class="form-control" name="userName" value="<%=user.getUserName()%>">
													</div>
													<div class="form-group">
														<label>New Password</label>
														<input type="password" id="confirm_password" class="form-control" name="confirm_password">
													</div>
													<div class="form-group">
														<label>Confirm Password</label>
														<input type="password" name="password" id="password" class="form-control">
													</div>
													<div class="form-group">
														<span id='message'></span>
													</div>
													<button class="btn btn-primary" type="submit" id="changePass" disabled>Save Changes</button>
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

	</div>

</div>
<!-- /Page Content -->

<%@ include file="../commonSections/customFooter.jsp" %>

</body>

</html>
