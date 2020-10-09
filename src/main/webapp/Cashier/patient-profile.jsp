<%@ page import="com.hospital.model.Patient" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
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

										String id=request.getParameter("id");

										try
										{



											Context context = new InitialContext();
											DataSource dataSource = (DataSource)context.lookup("java:jboss/datasources/mrs");
											Connection connection = dataSource.getConnection();
											String query = "Select * from hospital_patient where nationalId="+id;
											Statement statement = connection.createStatement();
											ResultSet result = statement.executeQuery(query);
											while(result.next())
											{
												String name= result.getString("firstName") +" "+result.getString("lastName") +" "+result.getString("surName");

									%>


									<div class="pro-widget-content">
										<div class="profile-info-widget">
											<a href="#" class="booking-doc-img">
												<img src="../assets/img/patients/patient.jpg" alt="User Image">
											</a>
											<div class="profile-det-info">
												<h3><%=name%></h3>

												<div class="patient-details">
													<h5><b>National ID :</b> <%=result.getString("nationalId")%></h5>
													<h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> <%=result.getString("address")%></h5>
													<h5 class="mb-0"><%=result.getString("email")%></h5>
													<form hidden>
														<input id="pid" value="<%=result.getString("nationalId")%>" hidden>
													</form>
												</div>
											</div>
										</div>
									</div>
									<div class="patient-info">
										<ul>
											<li>Phone Number<span><%=result.getString("phoneNumber")%></span></li>
											<li>Emergency Number<span><%=result.getString("emergencyContact")%></span></li>
											<li>Date Of Birth <span><%=result.getString("DOB")%>, <%=result.getString("gender")%></span></li>
											<li>County<span><%=result.getString("county")%></span></li>
											<li>Sub-County<span><%=result.getString("subCounty")%></span></li>
											<li>Village<span><%=result.getString("village")%></span></li>

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
										
										<!-- Appointment Tab -->
										<div id="billing" class="tab-pane fade show active">
											<div class="text-right">
												<a href="#" class="add-new-btn" onclick="return confirm('are you sure you want to add a new bill?')" data-toggle="modal" data-target="#add_bill">Add a Bill</a>
											</div>
											<div class="card card-table mb-0">
												<div class="card-body">
													<div class="table-responsive">
														<div >


															<table class="table table-hover table-center mb-0">
																<thead>
																<tr>
																	<th>Date</th>
																	<th>Particular</th>
																	<th>Quantity</th>
																	<th>price</th>
																	<th>Bill status</th>
																	<th></th>
																</tr>
																</thead>
																<tbody>

															<%
																String id1=result.getString("nationalId");

																request.setAttribute("patient_id",id1);
																try
																{
																	Context context1 = new InitialContext();
																	DataSource dataSource1 = (DataSource)context1.lookup("java:jboss/datasources/mrs");
																	Connection connection1 = dataSource1.getConnection();
																	String query1 = "Select * from hospital_invoice where patientId ="+id1;
																	Statement statement1 = connection1.createStatement();
																	ResultSet result1 = statement1.executeQuery(query1);
																	while(result1.next())
																	{

																		String localDate= result1.getString("time_created");
																		String tmpDate=localDate.substring(0,10);
																	//<td><span class="badge badge-pill bg-success-light">Confirm</span></td>
															%>
																<tr>
																	<td><%=tmpDate%></td>
																	<td><%=result1.getString("particular")%></td>
																	<td><%=result1.getString("quantity")%></td>
																	<td>ksh <%=result1.getString("price")%></td>

																	<%
																		if(result1.getString("status").equals("Not Paid")){
																	%>
																	<td><%=result1.getString("status")%></td>
																	<td class="text-right">
																		<div class="table-action">
																			<a  href="<%=request.getContextPath()%>/payBill?id=<%=result1.getString("id")%>" onclick="return confirm('are you sure the bill is paid?')"  class="btn btn-sm bg-info-light">
																				<i class="far fa-dollar"></i> pay
																			</a>
																		</div>
																	</td>
																	<%
																		}
																		else{
																	%>
																	<td><%=result1.getString("price")%></td>
																	<td></td>
																	<%
																		}
																	%>

																</tr>


															<%
																	}
																	connection1.close();
																}
																catch(Exception ex)
																{
																	out.println("Exception:" +ex.getMessage());
																	ex.printStackTrace();
																}

															%>
																</tbody>
															</table>



														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- /Appointment Tab -->

										<%
												}
												connection.close();
											}
											catch(Exception ex1)
											{
												out.println("Exception:" +ex1.getMessage());
												ex1.printStackTrace();
											}

										%>


												
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
<div class="modal fade custom-modal" id="add_bill">
	<div class="modal-dialog modal-dialog-centered modal-md" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title">Medical Records</h3>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			</div>
			<form method="post" action="<%=request.getContextPath()%>/payBill">
				<div class="modal-body">
					<div class="form-group" hidden>
						<label>patient id </label>
						<input type="text" class="form-control" name="patientId" value="<%=request.getAttribute("patient_id")%>">
					</div>
					<div class="form-group" >
						<label>Particular</label>
						<input type="text" class="form-control" name="particular">
					</div>
					<div class="form-group" >
						<label>price</label>
						<input type="text" class="form-control" name="price">
					</div>
					<div class="form-group" >
						<label>Quantity</label>
						<input type="text" class="form-control" name="quantity">
					</div>
					<div class="form-group" hidden>
						<label></label>
						<input type="text" class="form-control" name="status" value="Paid">
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
	  
		<!-- custom js -->
		<script src="../js/patientBills.js"></script>

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