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
									<li class="breadcrumb-item"><a href="../Cashier/cashier-dashboard.jsp">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">patient Profile</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Profile</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->
			
			<!-- Page Content -->
			<div class="content">
				<div class="container-fluid">

					<div class="row">
						<div class="col-md-5 col-lg-4 col-xl-3 theiaStickySidebar dct-dashbd-lft">
						
							<!-- Profile Widget -->
							<div class="card widget-profile pat-widget-profile">
								<div class="card-body">
									<div class="pro-widget-content">
										<div class="profile-info-widget">
											<a href="#" class="booking-doc-img">
												<img src="../assets/img/patients/patient.jpg" alt="User Image">
											</a>
											<div class="profile-det-info">
												<h3>Richard Wilson</h3>
												
												<div class="patient-details">
													<h5><b>Patient ID :</b> PT0016</h5>
													<h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> Newyork, United States</h5>
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
							<!-- /Profile Widget -->

							
						</div>

						<div class="col-md-7 col-lg-8 col-xl-9 dct-appoinment">
							<div class="card">
								<div class="card-body pt-0">
									<div class="user-tabs">
										<ul class="nav nav-tabs nav-tabs-bottom nav-justified flex-wrap">
											<li class="nav-item active">
												<a class="nav-link" href="#billing" data-toggle="tab"><span>Billing</span></a>
											</li> 
										</ul>
									</div>
									<div class="tab-content">

										<!-- Billing Tab -->
										<div class="tab-pane" id="billing">
											<div class="text-right">
												<a class="add-new-btn" href="add-billing.html">Add Billing</a>
											</div>
											<div class="card card-table mb-0">
												<div class="card-body">
													<div class="table-responsive">



													</div>
												</div>
											</div>
										</div>
										<!-- Billing Tab -->

												
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
		
		<!-- Add Medical Records Modal -->
		<div class="modal fade custom-modal" id="add_billing_records">
			<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title">Medical Records</h3>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					</div>
					<form>					
						<div class="modal-body">
							<div class="form-group">
								<label>Date</label>
								<input type="text" class="form-control datetimepicker" value="31-10-2019">
							</div>
							<div class="form-group">
								<label>Description ( Optional )</label>
								<textarea class="form-control"></textarea>
							</div>
							<div class="form-group">
								<label>Upload File</label> 
								<input type="file" class="form-control">
							</div>	
							<div class="submit-section text-center">
								<button type="submit" class="btn btn-primary submit-btn">Submit</button>
								<button type="button" class="btn btn-secondary submit-btn" data-dismiss="modal">Cancel</button>							
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- /Add Medical Records Modal -->
	  
		<!-- jQuery -->
		<script src="../assets/js/jquery.min.js"></script>
		
		<!-- Bootstrap Core JS -->
		<script src="../assets/js/popper.min.js"></script>
		<script src="../assets/js/bootstrap.min.js"></script>
		
		<!-- Datetimepicker JS -->
		<script src="../assets/js/moment.min.js"></script>
		<script src="../assets/js/bootstrap-datetimepicker.min.js"></script>
		
		<!-- Sticky Sidebar JS -->
        <script src="../assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
        <script src="../assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>
		
		<!-- Custom JS -->
		<script src="../assets/js/script.js"></script>
		
	</body>

<!-- doccure/patient-profile.html  30 Nov 2019 04:12:13 GMT -->
</html>