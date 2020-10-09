<!DOCTYPE html>
<html lang="en">
    
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Doccure - Forgot Password</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="../adminAssets/img/favicon.png">

		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../adminAssets/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="../adminAssets/css/font-awesome.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="../adminAssets/css/style.css">
		
		<!--[if lt IE 9]>
			<script src="../adminAssets/js/html5shiv.min.js"></script>
			<script src="../adminAssets/js/respond.min.js"></script>
		<![endif]-->
    </head>
    <body>
	
		<!-- Main Wrapper -->
        <div class="main-wrapper login-body">
            <div class="login-wrapper">
            	<div class="container">
                	<div class="loginbox">
                    	<div class="login-left">
							<img class="img-fluid" src="../adminAssets/img/logo-white.png" alt="Logo">
                        </div>
                        <div class="login-right">
							<div class="login-right-wrap">
								<h1>Forgot Password?</h1>
								<p class="account-subtitle">Enter your user name and National Id for user to change Password</p>
								
								<!-- Form -->
								<form method="post" action="#">
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-user-alt"></i></span>
                                        </div>
                                        <input type="text" class="form-control" placeholder="user name" name="userName">
                                    </div>
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-user-circle"></i></span>
                                        </div>
                                        <input type="text" class="form-control" placeholder="user name" name="nationalId">
                                    </div>
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                                        </div>
                                        <input type="password" class="form-control" placeholder="enter password" name="initPass">
                                    </div>
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                                        </div>
                                        <input type="password" class="form-control" placeholder="confirm password" name="password">
                                    </div>
								</form>
								<!-- /Form -->
							</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <script src="../adminAssets/js/jquery-3.2.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="../adminAssets/js/popper.min.js"></script>
        <script src="../adminAssets/js/bootstrap.min.js"></script>
		
		<!-- Custom JS -->
		<script src="../adminAssets/js/script.js"></script>
		
    </body>

</html>