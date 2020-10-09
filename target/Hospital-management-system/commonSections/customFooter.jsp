<%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 10/6/20
  Time: 1:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


</div>
<!-- /Main Wrapper -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<script>

    $('#confirm_password,#password').on('keyup', function () {
        if ($('#confirm_password').val() == $('#password').val()) {
            $('#message').html('').css('color', 'green');
            $('#changePass').prop('disabled', false);
        } else{
            $('#message').html('password doesn\'t Matching').css('color', 'red');
            $('#changePass').prop('disabled', true);
        }
    });
</script>

<script src="<%=request.getContextPath()%>/js/searchPatient.js"></script>
<!-- jQuery -->
<script src="../assets/js/jquery.min.js"></script>

<!-- Bootstrap Core JS -->
<script src="../assets/js/popper.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>

<!-- Sticky Sidebar JS -->
<script src="../assets/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
<script src="../assets/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>

<!-- Circle Progress JS -->
<script src="../assets/js/circle-progress.min.js"></script>

<!-- Custom JS -->
<script src="../assets/js/script.js"></script>

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