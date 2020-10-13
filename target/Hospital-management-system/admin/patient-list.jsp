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
					<a href="doctor-list.jsp"><i class="fe fe-user-plus"></i> <span>Doctors</span></a>
				</li>
				<li class="active">
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
				<li>
					<a href="manageUsers.jsp"><i class="fe fe-document"></i> <span> Manage Users </span></a>
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- Page Wrapper -->
<div class="page-wrapper">
	<div class="content container-fluid">

		<!-- Page Header -->
		<div class="page-header">
			<div class="row">
				<div class="col-sm-12">
					<h3 class="page-title">List of Patient</h3>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
						<li class="breadcrumb-item"><a href="javascript:(0);">Users</a></li>
						<li class="breadcrumb-item active">Patient</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /Page Header -->

		<div class="row">
			<div class="col-sm-12">
				<div class="card">
					<div class="card-body">
						<div class="table-responsive">
							<div class="table-responsive">
								<div id="module-content">
									...loading
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>
<!-- /Page Wrapper -->

</div>
<!-- /Main Wrapper -->


<script src="<%=request.getContextPath()%>/js/Patient.js"></script>

<!-- jQuery -->
<script src="../adminAssets/js/jquery-3.2.1.min.js"></script>

<!-- Bootstrap Core JS -->
<script src="../adminAssets/js/popper.min.js"></script>
<script src="../adminAssets/js/bootstrap.min.js"></script>

<!-- Slimscroll JS -->
<script src="../adminAssets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Datatables JS -->
<script src="../adminAssets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../adminAssets/plugins/datatables/datatables.min.js"></script>

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