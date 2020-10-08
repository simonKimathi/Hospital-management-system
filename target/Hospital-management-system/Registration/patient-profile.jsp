<%@ page import="com.hospital.model.Patient" %>
<%@ page import="javax.ejb.EJB" %>
<%@ page import="com.hospital.EJB.PatientBeanI" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
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
									<li class="breadcrumb-item"><a href="doctor-dashboard.jsp">Home</a></li>
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
									<%
										Patient patient=new Patient();

										String id=request.getParameter("id");

										try
										{



											Context context1 = new InitialContext();
											DataSource dataSource1 = (DataSource)context1.lookup("java:jboss/datasources/mrs");
											Connection connection1 = dataSource1.getConnection();
											String query1 = "Select * from hospital_patient where nationalId="+id;
											Statement statement1 = connection1.createStatement();
											ResultSet result1 = statement1.executeQuery(query1);
											while(result1.next())
											{
												String name= result1.getString("firstName") +" "+result1.getString("lastName") +" "+result1.getString("surName");

									%>


									<div class="pro-widget-content">
										<div class="profile-info-widget">
											<a href="#" class="booking-doc-img">
												<img src="../assets/img/patients/patient.jpg" alt="User Image">
											</a>
											<div class="profile-det-info">
												<h3><%=name%></h3>

												<div class="patient-details">
													<h5><b>National ID :</b> <%=result1.getString("nationalId")%></h5>
													<h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> <%=result1.getString("address")%></h5>
													<h5 class="mb-0"><%=result1.getString("email")%></h5>
													<form hidden>
														<input id="pid" value="<%=result1.getString("nationalId")%>" hidden>
													</form>
												</div>
											</div>
										</div>
									</div>
									<div class="patient-info">
										<ul>
											<li>Phone Number<span><%=result1.getString("phoneNumber")%></span></li>
											<li>Emergency Number<span><%=result1.getString("emergencyContact")%></span></li>
											<li>Date Of Birth <span><%=result1.getString("DOB")%>, <%=result1.getString("gender")%></span></li>
											<li>County<span><%=result1.getString("county")%></span></li>
											<li>Sub-County<span><%=result1.getString("subCounty")%></span></li>
											<li>Village<span><%=result1.getString("village")%></span></li>

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
												<a class="nav-link" href="#medical" data-toggle="tab"><span class="med-records">Medical Records</span></a>
											</li>
										</ul>
									</div>
									<div class="tab-content">



										<!-- Medical Records Tab -->
										<div class="tab-pane fade" id="medical">
											<div class="text-right">
												<a href="#" class="add-new-btn" data-toggle="modal" data-target="#add_medical_records">Add a visit</a>
											</div>
											<div class="card card-table mb-0">
												<div class="card-body">
													<div class="table-responsive">
														<div id="medical_record">
															...loading
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- /Medical Records Tab -->


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
		<div class="modal fade custom-modal" id="add_medical_records">
			<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title">Medical Records</h3>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					</div>
					<form method="post" action="<%=request.getContextPath()%>/Patient_visits">
						<div class="modal-body">
							<div class="form-group">
								<label hidden>Patient id</label>
								<input type="text" class="form-control" value="<%=result1.getString("nationalId")%>" name="patientId" hidden>
							</div>
							<div class="form-group">
								<label>Reason for Visit </label>
								<input type="text" class="form-control" name="type">
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
		<%
				}
				connection1.close();
			}
			catch(Exception ex1)
			{
				out.println("Exception:" +ex1.getMessage());
				ex1.printStackTrace();
			}

		%>


		<!-- custom js -->
		<script src="../js/patientViewRegistration.js"></script>

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