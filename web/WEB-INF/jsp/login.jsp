<%-- 
    Document   : login
    Created on : Jan 13, 2018, 1:16:05 AM
    Author     : phong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="csslogin/vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="csslogin/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="csslogin/fonts/iconic/css/material-design-iconic-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="csslogin/vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="csslogin/vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="csslogin/vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="csslogin/vendor/select2/select2.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="csslogin/vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="csslogin/css/util.css">
        <link rel="stylesheet" type="text/css" href="csslogin/css/main.css">
        <!--===============================================================================================-->
    </head>
    <body>
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <form action="index.htm" method="post" modelAttribute="user" class="login100-form validate-form">
                        <span class="login100-form-title p-b-26">
                            POWER REVENTIONS
                        </span>
                        
                        <span class="login100-form-title p-b-48">
                            <i class="zmdi zmdi-font"></i>
                            <p style="color: red">${errors}</p>
                        </span>
                        
                        <div class="wrap-input100 validate-input" data-validate = "Username">
                            <input class="input100" type="text" name="Username">
                            <span class="focus-input100" data-placeholder="Username"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate="Enter password">
                            <span class="btn-show-pass">
                                <i class="zmdi zmdi-eye"></i>
                            </span>
                            <input class="input100" type="password" name="Password">
                            <span class="focus-input100" data-placeholder="Password"></span>
                        </div>

                        <div class="container-login100-form-btn">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <button type="submit" name="btnLogin" class="login100-form-btn">
                                    Login
                                </button>
                            </div>
                        </div>

                        <div class="text-center p-t-115">
                            <span class="txt1">
                                Don’t have an account?
                            </span>

                            <a class="txt2" href="#">
                                Sign Up
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <div id="dropDownSelect1"></div>

        <!--===============================================================================================-->
        <script src="csslogin/vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="csslogin/vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="csslogin/vendor/bootstrap/js/popper.js"></script>
        <script src="csslogin/vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="csslogin/vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="csslogin/vendor/daterangepicker/moment.min.js"></script>
        <script src="csslogin/vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="csslogin/vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>

    </body>
</html>


