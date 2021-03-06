<%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 10/6/20
  Time: 1:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../commonSections/checkSession.jsp" %>
<head>
    <meta charset="utf-8">
    <title>Nuru Hospital</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">

    <!-- Favicons -->
    <link href="../assets/img/favicon.png" rel="icon">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">

    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="../assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="../adminAssets/css/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/plugins/fontawesome/css/all.min.css">


    <!-- Datetimepicker CSS -->
    <link rel="stylesheet" href="../assets/css/bootstrap-datetimepicker.min.css">


    <!-- Main CSS -->
    <link rel="stylesheet" href="../assets/css/style.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="../adminAssets/css/style.css">


    <script src="<%=request.getContextPath()%>/js/app.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../assets/js/html5shiv.min.js"></script>
    <script src="../assets/js/respond.min.js"></script>
    <![endif]-->

    <style>
        .topnav .search-container {
            float: right;
        }

        .topnav input[type=text] {
            padding: 6px;
            margin-top: 8px;
            font-size: 17px;
            border: none;
        }

        .topnav .search-container button {
            float: right;
            padding: 6px 10px;
            margin-top: 8px;
            margin-right: 16px;
            background: #ddd;
            font-size: 17px;
            border: none;
            cursor: pointer;
        }

        .topnav .search-container button:hover {
            background: #ccc;
        }

        @media screen and (max-width: 800px) {
            .topnav .search-container {
                float: none;
            }

            .topnav a, .topnav input[type=text], .topnav .search-container button {
                float: none;
                display: block;
                text-align: left;
                width: 100%;
                margin: 0;
                padding: 14px;
            }

            .topnav input[type=text] {
                border: 1px solid #ccc;
            }
        }
    </style>
</head>
<body>

<!-- Main Wrapper -->
<div class="main-wrapper">

    <!-- Header -->
    <header class="header">
        <nav class="navbar navbar-expand-lg header-nav">
            <div class="navbar-header">
                <a id="mobile_btn" href="javascript:void(0);">
							<span class="bar-icon">
								<span></span>
								<span></span>
								<span></span>
							</span>
                </a>
                <a href="../Registration/registration-dashboard.jsp" class="navbar-brand logo">
                    <h3>Nuru Hospital</h3>
                </a>
            </div>
            <div class="main-menu-wrapper">
                <div class="menu-header">
                    <a href="../doctor/doctor-dashboard.jsp" class="menu-logo">
                        <img src="../assets/img/logo.png" class="img-fluid" alt="Logo">
                    </a>
                    <a id="menu_close" class="menu-close" href="javascript:void(0);">
                        <i class="fas fa-times"></i>
                    </a>
                </div>
                <ul class="main-nav">
                    <li>
                        <a href="registration-dashboard.jsp">Home</a>
                    </li>
                    <li class="has-submenu active">
                        <a href="#">Quick Links <i class="fas fa-chevron-down"></i></a>
                        <ul class="submenu">
                            <li class="active"><a href="../Registration/registration-dashboard.jsp">Dashboard</a></li>
                            <li><a href="../Registration/addPatient.jsp">add a patient</a></li>
                            <li><a href="../Registration/searchPatient.jsp">find a patient</a></li>
                            <li><a href="../Registration/viewRooms.jsp">rooms assignment</a></li>
                            <li><a href="../Registration/profile.jsp">My Profile</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

                <!-- User Menu -->
                <li class="nav-item dropdown has-arrow logged-item">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
								<span class="user-img">
									<img class="rounded-circle" src="../assets/img/doctors/doctor-thumb-02.jpg" width="31" alt="Darren Elder">
								</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <div class="user-header">
                            <div class="avatar avatar-sm">
                                <img src="../assets/img/doctors/doctor-thumb-02.jpg" alt="User Image" class="avatar-img rounded-circle">
                            </div>
                            <div class="user-text">
                                <%--<h6><%=user.getBioData().getFirstName()%> <%=user.getBioData().getSurName()%> <%=user.getBioData().getLastName()%></h6>--%>
                                <p class="text-muted mb-0">Secretary</p>
                            </div>
                        </div>
                        <a class="dropdown-item" href="../Registration/registration-dashboard.jsp">Dashboard</a>
                        <%--<a class="dropdown-item" href="doctor-profile-settings.html">Profile Settings</a>--%>
                        <a class="dropdown-item" href="../sign_in/sign_in.jsp">Logout</a>
                    </div>
                </li>
                <!-- /User Menu -->

            </ul>
        </nav>
    </header>
    <!-- /Header -->
