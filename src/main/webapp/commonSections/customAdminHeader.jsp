<%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 10/6/20
  Time: 12:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../commonSections/checkSession.jsp" %>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title> Admin | Nuru hospital</title>


    <script src="<%=request.getContextPath()%>/js/app.js"></script>


    <link href="<%=request.getContextPath()%>/Stylesheet/style.css" rel="stylesheet">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../adminAssets/css/bootstrap.min.css">

    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="../adminAssets/css/font-awesome.min.css">

    <!-- Feathericon CSS -->
    <link rel="stylesheet" href="../adminAssets/css/feathericon.min.css">

    <link rel="stylesheet" href="../adminAssets/plugins/morris/morris.css">

    <!-- Main CSS -->
    <link rel="stylesheet" href="../adminAssets/css/style.css">

    <!--[if lt IE 9]>
    <script src="../adminAssets/js/html5shiv.min.js"></script>
    <script src="../adminAssets/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<!-- Main Wrapper -->
<div class="main-wrapper">

    <!-- Header -->
    <div class="header">

        <!-- Logo -->
        <div class="header-left">
            <a href="index.jsp" class="logo">
                <h3>Nuru Hospital</h3>
            </a>
            <a href="index.jsp" class="logo logo-small">
                <img src="../adminAssets/img/logo-small.png" alt="Logo" width="30" height="30">
            </a>
        </div>
        <!-- /Logo -->

        <a href="javascript:void(0);" id="toggle_btn">
            <i class="fe fe-text-align-left"></i>
        </a>

        <div class="top-nav-search">
            <form>
                <input type="text" class="form-control" placeholder="Search here">
                <button class="btn" type="submit"><i class="fa fa-search"></i></button>
            </form>
        </div>

        <!-- Mobile Menu Toggle -->
        <a class="mobile_btn" id="mobile_btn">
            <i class="fa fa-bars"></i>
        </a>
        <!-- /Mobile Menu Toggle -->

        <!-- Header Right Menu -->
        <ul class="nav user-menu">


            <!-- User Menu -->
            <li class="nav-item dropdown has-arrow">
                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                    <span class="user-img"><img class="rounded-circle" src="../adminAssets/img/profiles/avatar-01.jpg" width="31" alt="Ryan Taylor"></span>
                </a>
                <div class="dropdown-menu">
                    <div class="user-header">
                        <div class="avatar avatar-sm">
                            <img src="../adminAssets/img/profiles/avatar-01.jpg" alt="User Image" class="avatar-img rounded-circle">
                        </div>
                        <div class="user-text">
                            <h6><%=user.getUserName()%></h6>
                            <p class="text-muted mb-0"><%=user.getRole()%></p>
                        </div>
                    </div>
                    <a class="dropdown-item" href="profile.jsp">My Profile</a>
                    <a class="dropdown-item" href="../sign_in/sign_in.jsp">Logout</a>
                </div>
            </li>
            <!-- /User Menu -->

        </ul>
        <!-- /Header Right Menu -->

    </div>