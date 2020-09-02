<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>home</title>
    <!-- Bootstrap core CSS -->
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../Stylesheet/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.1/css/all.css">
</head>
<body>
<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow" >
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Nairobi Hospital</a>
    <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link" href="#">Sign out</a>
        </li>
    </ul>
</nav>
<div class="container-fluid" style="padding-top:50px">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home">
                            <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                            <polyline points="9 22 9 12 15 12 15 22"></polyline>
                        </svg>
                            Quick links<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <i class="fas fa-angle-right rotate"></i>
                        <span><div class="fa-hospital-user fa-lg fas">
                        </div>&nbsp;Patients </span>
                        <ul class="nested">
                            <li><i class="far fa-folder-open ic-w mr-1"></i>add patient</li>
                            <li><i class="far fa-folder-open ic-w mr-1"></i>view patients</li>
                        </ul>

                    </li>
                    <li class="nav-item">
                        <i class="fas fa-angle-right rotate"></i>
                        <span><div class="fa-lg fa-user-md fas">
                        </div>&nbsp;doctors </span>
                        <ul class="nested">
                            <li><i class="fa-lg fa-user-md fas"></i>add doctor</li>
                            <li><i class="fa-lg fa-user-md fas"></i>view doctors </li>
                        </ul>

                    </li>
                    <li class="nav-item">
                        <i class="fas fa-angle-right rotate"></i>
                        <span><div class="fa-lg fa-notes-medical fas">
                        </div>&nbsp;Rooms </span>
                        <ul class="nested">
                            <li><i class="fa-lg fa-notes-medical fas"></i>add room</li>
                            <li><i class="fa-lg fa-medkit fas"></i>view rooms</li>
                        </ul>

                    </li>
                </ul>
            </div>
        </nav>
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">welcome back&nbsp;</h1>
                <p id="current_time">loading current time...</p>
            </div>
            <div id="module-content"> table loading...</div>
        </main>
    </div>
</div>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/popper.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<!-- Icons -->
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>feather.replace()</script>
<script>
    var d = new Date();
    document.getElementById("current_time").innerHTML = d.toString();

</script>
</body>
</html>