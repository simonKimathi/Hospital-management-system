<%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 02/09/2020
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<%--include header tag--%>
<%@ include file="../commonSections/header.jsp" %>
<body>
<%--navigation bar--%>
<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow" >
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="http://localhost:8080/Hospital-management-system">Nairobi Hospital</a>
    <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link" href="#">Sign out</a>
        </li>
    </ul>
</nav>
<div class="container-fluid" style="padding-top:50px">
    <div class="row">

        <%--include navigation bar--%>
        <%@ include file="../commonSections/sideBar.jsp" %>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <%@ include file="./addForm.jsp" %>
        </main>
    </div>
</div>

<%--include footer--%>
<script src="<%=request.getContextPath()%>/js/saveForms.js"></script>
<%@ include file="../commonSections/footer.jsp" %>

</body>
</html>

