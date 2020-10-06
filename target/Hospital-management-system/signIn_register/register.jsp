<!DOCTYPE html>
<html lang="en">

<!-- doccure/register.jsp  30 Nov 2019 04:12:20 GMT -->
<head>

	<%@ include file="../commonSections/HeadTag.jsp" %>
	</head>
	<body class="account-page">

		<!-- Main Wrapper -->
		<div class="main-wrapper">

			<!-- Header -->
<%--			<header class="header">
				<nav class="navbar navbar-expand-lg header-nav">
					<div class="navbar-header">
						<a id="mobile_btn" href="javascript:void(0);">
							<span class="bar-icon">
								<span></span>
								<span></span>
								<span></span>
							</span>
						</a>
						<a href="index-2.html" class="navbar-brand logo">
							<img src="../assets/img/logo.png" class="img-fluid" alt="Logo">
						</a>
					</div>
					<div class="main-menu-wrapper">
						<div class="menu-header">
							<a href="index-2.html" class="menu-logo">
								<img src="../assets/img/logo.png" class="img-fluid" alt="Logo">
							</a>
							<a id="menu_close" class="menu-close" href="javascript:void(0);">
								<i class="fas fa-times"></i>
							</a>
						</div>
						<ul class="main-nav">
							<li>
								<a href="index-2.html">Home</a>
							</li>
							<li class="has-submenu">
								<a href="#">Doctors <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="doctor-dashboard.jsp">Doctor Dashboard</a></li>
									<li><a href="appointments.html">Appointments</a></li>
									<li><a href="schedule-timings.html">Schedule Timing</a></li>
									<li><a href="my-patients.html">Patients List</a></li>
									<li><a href="patient-profile.jsp">Patients Profile</a></li>
									<li><a href="chat-doctor.html">Chat</a></li>
									<li><a href="invoices.html">Invoices</a></li>
									<li><a href="doctor-profile-settings.html">Profile Settings</a></li>
									<li><a href="reviews.html">Reviews</a></li>
									<li><a href="doctor-register.html">Doctor Register</a></li>
								</ul>
							</li>
							<li class="has-submenu">
								<a href="#">Patients <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="search.html">Search Doctor</a></li>
									<li><a href="doctor-profile.jsp">Doctor Profile</a></li>
									<li><a href="booking.html">Booking</a></li>
									<li><a href="checkout.html">Checkout</a></li>
									<li><a href="booking-success.html">Booking Success</a></li>
									<li><a href="patient-dashboard.html">Patient Dashboard</a></li>
									<li><a href="favourites.html">Favourites</a></li>
									<li><a href="chat.html">Chat</a></li>
									<li><a href="profile-settings.html">Profile Settings</a></li>
									<li><a href="change-password.html">Change Password</a></li>
								</ul>
							</li>
							<li class="has-submenu active">
								<a href="#">Pages <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="voice-call.html">Voice Call</a></li>
									<li><a href="video-call.html">Video Call</a></li>
									<li><a href="search.html">Search Doctors</a></li>
									<li><a href="calendar.html">Calendar</a></li>
									<li><a href="components.html">Components</a></li>
									<li class="has-submenu">
										<a href="invoices.html">Invoices</a>
										<ul class="submenu">
											<li><a href="invoices.html">Invoices</a></li>
											<li><a href="invoice-view.html">Invoice View</a></li>
										</ul>
									</li>
									<li><a href="manageUsers.jsp">Starter Page</a></li>
									<li><a href="login.html">Login</a></li>
									<li class="active"><a href="register.jsp">Register</a></li>
									<li><a href="forgot-password.html">Forgot Password</a></li>
								</ul>
							</li>
							<li>
								<a href="admin/index.jsp" target="_blank">Admin</a>
							</li>
							<li class="login-link">
								<a href="login.html">Login / Signup</a>
							</li>
						</ul>
					</div>
					<ul class="nav header-navbar-rht">
						<li class="nav-item contact-item">
							<div class="header-contact-img">
								<i class="far fa-hospital"></i>
							</div>
							<div class="header-contact-detail">
								<p class="contact-header">Contact</p>
								<p class="contact-info-header"> +1 315 369 5943</p>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link header-login" href="login.html">login / Signup </a>
						</li>
					</ul>
				</nav>
			</header>--%>
			<!-- /Header -->

			<!-- Page Content -->
			<div class="content">
				<div class="container-fluid">

					<div class="row">
						<div class="col-md-8 offset-md-2">

							<!-- Register Content -->
							<div class="account-content">
								<div class="row align-items-center justify-content-center">
									<div class="col-md-7 col-lg-6 login-left">
										<img src="../assets/img/login-banner.png" class="img-fluid" alt="Doccure Register">
									</div>
									<div class="col-md-12 col-lg-6 login-right">
										<%--<div class="login-header">
											<h3>Patient Register <a href="doctor-register.html">Are you a Doctor?</a></h3>
										</div>--%>

										<!-- Register Form -->
										<form method="post" action="<%=request.getContextPath()%>/register"><%--
											<div class="form-group form-focus">
												<input type="text" class="form-control floating">
												<label class="focus-label">Name</label>
											</div>--%>
											<div class="input-group form-group">
												<div class="input-group-prepend">
													<span class="input-group-text"><i class="fas fa-user-alt"></i></span>
												</div>
												<input type="text" class="form-control" placeholder="full name" name="name">
											</div>
											<div class="input-group form-group">
												<div class="input-group-prepend">
													<span class="input-group-text"><i class="fas fa-user-circle"></i></span>
												</div>
												<input type="text" class="form-control" placeholder="User name" name="userName">
											</div>

											<div class="form-row">
												<div class="form-group">
													<label for="rType">User Role</label>
													<select id="rType" class="form-control" placeholder="choose Role..." name="role">
															<option>Admin</option>
															<option>Doctor</option>
															<option>Cashier</option>
															<option>Pharmacist</option>
															<option>Lab</option>
													</select>
												</div>
											</div>
											<div class="input-group form-group">
												<div class="input-group-prepend">
													<span class="input-group-text"><i class="fas fa-key"></i></span>
												</div>
												<input type="password" class="form-control" placeholder="enter password" name="initialPassword">
											</div>
											<div class="input-group form-group">
												<div class="input-group-prepend">
													<span class="input-group-text"><i class="fas fa-key"></i></span>
												</div>
												<input type="password" class="form-control" placeholder=" confirm password" name="password">
											</div>
											<button class="btn btn-primary btn-block btn-lg login-btn" type="submit">Signup</button>
											<div class="login-or">
												<span class="or-line"></span>
												<span class="span-or">or</span>
											</div>
											<div class="text-center dont-have">
												<a class="forgot-link" href="<%=request.getContextPath()%>/signIn_register/temp.jsp">Already have an account?</a>
											</div>
										</form>
										<!-- /Register Form -->

									</div>
								</div>
							</div>
							<!-- /Register Content -->

						</div>
					</div>

				</div>

			</div>
			<!-- /Page Content -->

			<!-- Footer -->
<!--			<footer class="footer">

				&lt;!&ndash; Footer Top &ndash;&gt;
				<div class="footer-top">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-3 col-md-6">

								&lt;!&ndash; Footer Widget &ndash;&gt;
								<div class="footer-widget footer-about">
									<div class="footer-logo">
										<img src="assets/img/footer-logo.png" alt="logo">
									</div>
									<div class="footer-about-content">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
										<div class="social-icon">
											<ul>
												<li>
													<a href="#" target="_blank"><i class="fab fa-facebook-f"></i> </a>
												</li>
												<li>
													<a href="#" target="_blank"><i class="fab fa-twitter"></i> </a>
												</li>
												<li>
													<a href="#" target="_blank"><i class="fab fa-linkedin-in"></i></a>
												</li>
												<li>
													<a href="#" target="_blank"><i class="fab fa-instagram"></i></a>
												</li>
												<li>
													<a href="#" target="_blank"><i class="fab fa-dribbble"></i> </a>
												</li>
											</ul>
										</div>
									</div>
								</div>
								&lt;!&ndash; /Footer Widget &ndash;&gt;

							</div>

							<div class="col-lg-3 col-md-6">

								&lt;!&ndash; Footer Widget &ndash;&gt;
								<div class="footer-widget footer-menu">
									<h2 class="footer-title">For Patients</h2>
									<ul>
										<li><a href="search.html"><i class="fas fa-angle-double-right"></i> Search for Doctors</a></li>
										<li><a href="login.html"><i class="fas fa-angle-double-right"></i> Login</a></li>
										<li><a href="register.jsp"><i class="fas fa-angle-double-right"></i> Register</a></li>
										<li><a href="booking.html"><i class="fas fa-angle-double-right"></i> Booking</a></li>
										<li><a href="patient-dashboard.html"><i class="fas fa-angle-double-right"></i> Patient Dashboard</a></li>
									</ul>
								</div>
								&lt;!&ndash; /Footer Widget &ndash;&gt;

							</div>

							<div class="col-lg-3 col-md-6">

								&lt;!&ndash; Footer Widget &ndash;&gt;
								<div class="footer-widget footer-menu">
									<h2 class="footer-title">For Doctors</h2>
									<ul>
										<li><a href="appointments.html"><i class="fas fa-angle-double-right"></i> Appointments</a></li>
										<li><a href="chat.html"><i class="fas fa-angle-double-right"></i> Chat</a></li>
										<li><a href="login.html"><i class="fas fa-angle-double-right"></i> Login</a></li>
										<li><a href="doctor-register.jsp"><i class="fas fa-angle-double-right"></i> Register</a></li>
										<li><a href="doctor-dashboard.jsp"><i class="fas fa-angle-double-right"></i> Doctor Dashboard</a></li>
									</ul>
								</div>
								&lt;!&ndash; /Footer Widget &ndash;&gt;

							</div>

							<div class="col-lg-3 col-md-6">

								&lt;!&ndash; Footer Widget &ndash;&gt;
								<div class="footer-widget footer-contact">
									<h2 class="footer-title">Contact Us</h2>
									<div class="footer-contact-info">
										<div class="footer-address">
											<span><i class="fas fa-map-marker-alt"></i></span>
											<p> 3556  Beech Street, San Francisco,<br> California, CA 94108 </p>
										</div>
										<p>
											<i class="fas fa-phone-alt"></i>
											+1 315 369 5943
										</p>
										<p class="mb-0">
											<i class="fas fa-envelope"></i>
											doccure@example.com
										</p>
									</div>
								</div>
								&lt;!&ndash; /Footer Widget &ndash;&gt;

							</div>

						</div>
					</div>
				</div>
				&lt;!&ndash; /Footer Top &ndash;&gt;

				&lt;!&ndash; Footer Bottom &ndash;&gt;
                <div class="footer-bottom">
					<div class="container-fluid">

						&lt;!&ndash; Copyright &ndash;&gt;
						<div class="copyright">
							<div class="row">
								<div class="col-md-6 col-lg-6">
									<div class="copyright-text">
										<p class="mb-0"><a href="templateshub.net">Templates Hub</a></p>
									</div>
								</div>
								<div class="col-md-6 col-lg-6">

									&lt;!&ndash; Copyright Menu &ndash;&gt;
									<div class="copyright-menu">
										<ul class="policy-menu">
											<li><a href="term-condition.html">Terms and Conditions</a></li>
											<li><a href="privacy-policy.html">Policy</a></li>
										</ul>
									</div>
									&lt;!&ndash; /Copyright Menu &ndash;&gt;

								</div>
							</div>
						</div>
						&lt;!&ndash; /Copyright &ndash;&gt;

					</div>
				</div>
				&lt;!&ndash; /Footer Bottom &ndash;&gt;

			</footer>-->
			<!-- /Footer -->

		</div>
		<!-- /Main Wrapper -->

		<!-- jQuery -->
		<script src="assets/js/jquery.min.js"></script>

		<!-- Bootstrap Core JS -->
		<script src="assets/js/popper.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- Custom JS -->
		<script src="assets/js/script.js"></script>

	</body>

<!-- doccure/register.jsp  30 Nov 2019 04:12:20 GMT -->
</html>