<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="hospital management system login page">
    <meta name="author" content="simon kimathi">
    <title>Sign in</title>
    <!-- Load an icon library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <!-- Google Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/Stylesheet/style.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/js/app.js"></script>

    <link href="sign-in.css" rel="stylesheet">
</head>
<body class="text-center">

<a href="#lightbox" data-lightbox="login-register-form" data-width="500px" class="lightbox">Login</a>

<a href="#lightbox" data-lightbox="login-register-form" data-width="500px" class="lightbox" data-form="register">Register</a>

<div class="paslo_lightbox login_register_form" id="login-register-form">
    <ul class="form-switcher">
        <li class="login_list"><a href="#0" class="login">Sign in</a></li>
        <li class="register_list"><a href="#0" class="register">Register</a></li>
    </ul>

    <div class="form_wrapper login_wrapper">
        <div class="text-center form login_form">
            <img class="mb-4" src="../index.png" alt="" width="72" height="72">

            <h1 class="h3 mb-3 font-weight-normal">sign in</h1>



            <label for="inputUserName" class="sr-only">User Name</label>
            <input type="text" id="inputUserName" class="form-control" placeholder="User Name" required autofocus>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>
            <p>
                <input type="submit" name="wp-submit" id="wp-submit" class="button-primary" value="Log In">
            </p>
        </div>
        <div class="form password_form" style="display: none;">
            <p>Lost your password? Please enter your username or email address. You will receive a link to create a new password via email.</p>
            <p>
                <label for="user_login">Username or E-mail</label>
                <input type="text" name="log" id="user_login" class="input" value="" size="20">
            </p>
            <p>
                <input type="submit" name="wp-submit" id="wp-submit" class="button-primary" value="Reset Password">
            </p>
        </div>
        <p class="login_switch_link"><a href="#" class="login_switch">Forgot your Password?</a></p>
    </div>

    <div class="form_wrapper register_wrapper">
        <div class="form register_form">
            <p>
                <label for="user_login">Username</label>
                <input type="text" name="log" id="user_login" class="input" value="" size="20">
            </p>
            <p>
                <label for="user_login">E-mail</label>
                <input type="email" name="log" id="user_email" class="input" value="Store" size="20">
            </p>
            <p>
                <label for="user_pass">Password</label>
                <input type="password" name="pwd" id="user_pass" class="input" value="" size="20">
            </p>
            <p>
                <label for="user_pass">Password Again</label>
                <input type="password" name="pwd" id="user_pass2" class="input" value="" size="20">
            </p>
            <p>
                <label><input name="rememberme" type="checkbox" id="rememberme" value="forever">I have read and accepted the <a href="#" class="seller_policy_link">Seller's Policy</a></label>
            </p>
            <p>
                <input type="submit" name="wp-submit" id="wp-submit" class="button-primary" value="Register">
            </p>
        </div>
        <div class="seller_policy" style="display:none;">
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum
            </p>
        </div>
    </div>

</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
<script src="https://use.fontawesome.com/6836e0fd63.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


<%--custom js--%>
<script src="script.js"></script>

</body>
</html>

<!--
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="hospital management system login page">
        <meta name="author" content="simon kimathi">
        <title>Sign in</title>
        &lt;!&ndash; Bootstrap core CSS &ndash;&gt;
        <link href="../bootstrap/css/bootstrap.css" rel="stylesheet">
        &lt;!&ndash; style sheet link &ndash;&gt;
        <link href="sign-in.css" rel="stylesheet">
    </head>
    <body class="text-center">
        <form class="form-signin">
            <img class="mb-4" src="../index.png" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">sign in</h1>
            <label for="inputUserName" class="sr-only">User Name</label>
            <input type="text" id="inputUserName" class="form-control" placeholder="User Name" required autofocus>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
            <p class="mt-5 mb-3 text-muted">&copy; 2020</p>
        </form>
        &lt;!&ndash; Bootstrap core JavaScript
    ================================================== &ndash;&gt;
        &lt;!&ndash; Placed at the end of the document so the pages load faster &ndash;&gt;
        <script src="../assets/js/jquery.min.js"></script>
        <script src="../assets/js/popper.js"></script>
        <script src="../bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
-->
