<%-- 
    Document   : student-mgr
    Created on : Jan 12, 2018, 1:42:25 PM
    Author     : phong
--%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Change Pass</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

        <!-- Bootstrap CSS File -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Libraries CSS Files -->
        <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!-- Main Stylesheet File -->
        <link href="css/style.css" rel="stylesheet">

        <!-- =======================================================
          Theme Name: BizPage
          Theme URL: https://bootstrapmade.com/bizpage-bootstrap-business-template/
          Author: BootstrapMade.com
          License: https://bootstrapmade.com/license/
        ======================================================= -->
    </head>

    <body>

        <!--==========================
          Header
        ============================-->
        <header id="header">
            <div class="container-fluid">

                <div id="logo" class="pull-left">
                    <h1><a href="#intro" class="scrollto">๖ۣۜPower ๖ۣۜRevention</a></h1>
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <!-- <a href="#intro"><img src="img/logo.png" alt="" title="" /></a>-->
                </div>

                <nav id="nav-menu-container">
                    <ul class="nav-menu">
                        <li class="menu-active"><a href="index.htm"><spring:message code="label.home.menu1" text="Trang chủ"/></a></li>
                        <li><a href="#about"><spring:message code="label.home.menu2" text="Phòng ban"/></a></li>
                        <li><a href="#services"><spring:message code="label.home.menu3" text="Thành tích"/></a></li>
                        <li><a href="#team"><spring:message code="label.home.menu4" text="Quản lý"/></a></li>
                        <li class="menu-has-children"><a href="#"><spring:message code="label.home.menu5" text="Chức năng"/></a>
                            <ul>
                                <li><a href="student-mgr.htm"><spring:message code="label.home.li1" text="Cập nhật nhân viên"/></a></li>
                                <li><a href="editDP.htm"><spring:message code="label.home.li2" text="Cập nhật phòng ban"/></a></li>
                                <li><a href="insertpage.htm"><spring:message code="label.home.li3" text="Thêm nhân viên"/></a></li>
                                <li><a href="departs.htm"><spring:message code="label.home.li4" text="Thêm phòng ban"/></a></li>
                                <li><a href="records.htm"><spring:message code="label.home.li5" text="Thêm thành tích"/></a></li>
                                <li><a href="tableRecord.htm"><spring:message code="label.home.li6" text="Danh sách thành tích"/></a></li>
                                <li><a href="changepass.htm"><spring:message code="label.home.li7" text="Bảo mật tài khoản"/></a></li>
                            </ul>
                        </li>
                        <li><a href="#contact"><spring:message code="label.home.menu6" text="Liên hệ"/></a></li>
                        <li class="menu-has-children"><a href="#"><spring:message code="label.home.menu7" text="Người dùng"/> | ${username}</a>
                            <ul>
                                <li><a href="login.htm"><spring:message code="label.home.li8" text="Đăng xuất"/></a></li>
                            </ul>
                        </li>
                        <li>Language: <a href="?lang=en">English</a> | <a href="?lang=vi">Vietnamese</a></li>
                    </ul>
                </nav><!-- #nav-menu-container -->
            </div>
        </header><!-- #header -->

        <!--==========================
          Intro Section
        ============================-->
        <section id="intro2">
            <div class="intro-container">
                <div id="introCarousel" class="carousel  slide carousel-fade" data-ride="carousel">

                    <ol class="carousel-indicators"></ol>

                    <div class="carousel-inner" role="listbox">

                        <div class="carousel-item active" style="background-image: url('img/intro-carousel/1.jpg');">

                        </div>
                    </div>
                </div>
            </div>
        </section><!-- #intro -->

        <main id="main">
            <!--==========================
              Contact Section
            ============================-->
            <section id="contact" class="section-bg wow fadeInUp">
                <div class="container">

                    <div class="section-header">
                        <h3><spring:message code="fi.d7" text="Đổi mật khẩu"/></h3>
                        <p></p>
                        <p style="padding-bottom:0px; margin-top: -35px; color:red">Trạng thái: ${message}</p>
                    </div>
                    <div class="form" style="  font-family: Times New Roman;">
                        <form action="changepass.htm" method="post" modelAttribute="userr" role="form" class="contactForm">
                            <div class="form-row" style="color: red">
                                <c:set var="userr" value="${userr}"></c:set>
                                    <div class="form-group col-md-6">
                                        <spring:message code="fi.d5" text="Tài khoản"/><input readonly="" type="password" class="form-control" name="username" value="${username}" id="email" placeholder="Mã phòng ban" data-rule="minlen:2" data-msg="Vui lòng nhập mã phòng ban" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group col-md-6">
                                    <spring:message code="fi.d6" text="Mật khẩu"/><input type="password" name="password" class="form-control" id="name" placeholder="<spring:message code="fi.d6" text="Mật khẩu"/>" data-rule="minlen:1" data-msg="Vui lòng nhập tên phòng ban" />
                                    <div class="validation"></div>
                                </div>
                            </div>
                            <div class="form-row" style="color: red">

                                <div class="text-center" style="padding-left: 470px; padding-top: 24px; padding-bottom: 24px;"><button name="btnUpdatepass" type="submit"><spring:message code="btn.add3" text="Cập nhật"/></button>&nbsp;&nbsp;&nbsp;<button name="btnReset" type="submit">Reset</button></div>
                            </div> 
                        </form>
                    </div>
                </div>
            </section><!-- #contact -->

        </main>

        <!--==========================
          Footer
        ============================-->
        <footer id="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-3 col-md-6 footer-info">
                            <h3>๖ۣۜP๖ۣۜR</h3>
                            <p>Dự án Java 5 - Sinh viên thực hiện PhongPTPS05454 - Fpoly.</p>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>Liên kết</h4>
                            <ul>
                                <li><i class="ion-ios-arrow-right"></i> <a href="#">Home</a></li>
                                <li><i class="ion-ios-arrow-right"></i> <a href="#">About us</a></li>
                                <li><i class="ion-ios-arrow-right"></i> <a href="#">Services</a></li>
                                <li><i class="ion-ios-arrow-right"></i> <a href="#">Terms of service</a></li>
                                <li><i class="ion-ios-arrow-right"></i> <a href="#">Privacy policy</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-contact">
                            <h4>Liên hệ</h4>
                            <p>
                                Nam Kỳ Khởi Nghĩa<br>
                                Hồ Chí Minh, HCM 700000<br>
                                Asia <br>
                                <strong>Phone:</strong> +84 927 383 635<br>
                                <strong>Email:</strong> phongptps05454@fpt.edu.vn<br>
                            </p>

                            <div class="social-links">
                                <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                                <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
                                <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
                            </div>

                        </div>

                        <div class="col-lg-3 col-md-6 footer-newsletter">
                            <h4>Bản quyền</h4>
                            <p>Bản quyền thuộc về PhongPTPS05454 - Poly K12.3.</p>
                            <form action="" method="post">
                                <input type="email" name="email"><input type="submit"  value="Subscribe">
                            </form>
                        </div>

                    </div>
                </div>
            </div>

            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong>๖ۣۜPower ๖ۣۜRevention</strong>. All Rights Reserved
                </div>
                <div class="credits">
                    <!--
                      All the links in the footer should remain intact.
                      You can delete the links only if you purchased the pro version.
                      Licensing information: https://bootstrapmade.com/license/
                      Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=BizPage
                    -->
                    Best <a href="https://bootstrapmade.com/">Bootstrap Templates</a> by BootstrapMade
                </div>
            </div>
        </footer><!-- #footer -->

        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="lib/jquery/jquery-migrate.min.js"></script>
        <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/superfish/hoverIntent.js"></script>
        <script src="lib/superfish/superfish.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/isotope/isotope.pkgd.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>
        <script src="lib/touchSwipe/jquery.touchSwipe.min.js"></script>
        <!-- Contact Form JavaScript File -->
        <script src="contactform/contactform.js"></script>

        <!-- Template Main Javascript File -->
        <script src="js/main.js"></script>

    </body>
</html>
