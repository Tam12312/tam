<!DOCTYPE html>
<!--
Template Name: Hoppler
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Power Revention</title>
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

    <body style="text-align: center">

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
                        <li class="menu-active"><a href="index.htm"><spring:message code="lable.home.menu1" text="Trang chủ"/></a></li>
                        <li><a href="#about"><spring:message code="lable.home.menu2" text="Phòng ban"/></a></li>
                        <li><a href="#services"><spring:message code="lable.home.menu3" text="Thành tích"/></a></li>
                        <li><a href="#team"><spring:message code="lable.home.menu4" text="Quản lý"/></a></li>
                        <li class="menu-has-children"><a href="#"><spring:message code="lable.home.menu5" text="Chức năng"/></a>
                            <ul>
                                <li><a href="student-mgr.htm"><spring:message code="lable.home.li1" text="Cập nhật nhân viên"/></a></li>
                                <li><a href="editDP.htm"><spring:message code="lable.home.li2" text="Cập nhật phòng ban"/></a></li>
                                <li><a href="insertpage.htm"><spring:message code="lable.home.li3" text="Thêm nhân viên"/></a></li>
                                <li><a href="departs.htm"><spring:message code="lable.home.li4" text="Thêm phòng ban"/></a></li>
                                <li><a href="records.htm"><spring:message code="lable.home.li5" text="Thêm thành tích"/></a></li>
                                <li><a href="tableRecord.htm"><spring:message code="lable.home.li6" text="Danh sách thành tích"/></a></li>
                                <li><a href="changepass.htm"><spring:message code="lable.home.li7" text="Bảo mật tài khoản"/></a></li>
                            </ul>
                        </li>
                        <li><a href="#contact"><spring:message code="lable.home.menu6" text="Liên hệ"/></a></li>
                        <li class="menu-has-children"><a href="#"><spring:message code="lable.home.menu7" text="Người dùng"/> | ${username}</a>
                            <ul>
                                <li><a href="login.htm"><spring:message code="lable.home.li8" text="Đăng xuất"/></a></li>
                            </ul>
                        </li>
                        <a href="?lang=en">English</a> | <a href="?lang=vi">Việt Nam</a>
                    </ul>
                </nav><!-- #nav-menu-container -->
            </div>
        </header><!-- #header -->

        <!--==========================
          Intro Section
        ============================-->
        <section id="intro">
            <div class="intro-container">
                <div id="introCarousel" class="carousel  slide carousel-fade" data-ride="carousel">

                    <ol class="carousel-indicators"></ol>

                    <div class="carousel-inner" role="listbox">

                        <div class="carousel-item active" style="background-image: url('img/intro-carousel/1.jpg');">
                            <div class="carousel-container">
                                <div class="carousel-content">
                                    <h2><spring:message code="title.home.h2" text="CHUYÊN NGHIỆP"/></h2>
                                    <a href="#featured-services" class="btn-get-started scrollto"><spring:message code="title.home.h1" text="Bắt đầu"/></a>
                                </div>
                            </div>
                        </div>

                        <div class="carousel-item" style="background-image: url('img/intro-carousel/2.jpg');">
                            <div class="carousel-container">
                                <div class="carousel-content">
                                    <h2><spring:message code="tile.home.h3" text="SÁNG TẠO"/></h2>
                                    <a href="#featured-services" class="btn-get-started scrollto"><spring:message code="title.home.h1" text="Bắt đầu"/></a>
                                </div>
                            </div>
                        </div>

                        <div class="carousel-item" style="background-image: url('img/intro-carousel/3.jpg');">
                            <div class="carousel-container">
                                <div class="carousel-content">
                                    <h2><spring:message code="tile.home.h4" text="ĐÚNG THỜI ĐIỂM"/></h2>
                                    <a href="#featured-services" class="btn-get-started scrollto"><spring:message code="title.home.h1" text="Bắt đầu"/></a>
                                </div>
                            </div>
                        </div>

                        <div class="carousel-item" style="background-image: url('img/intro-carousel/4.jpg');">
                            <div class="carousel-container">
                                <div class="carousel-content">
                                    <h2><spring:message code="tile.home.h5" text="NHIỆT HUYẾT"/></h2>
                                    <a href="#featured-services" class="btn-get-started scrollto"><spring:message code="title.home.h1" text="Bắt đầu"/></a>
                                </div>
                            </div>
                        </div>

                        <div class="carousel-item" style="background-image: url('img/intro-carousel/5.jpg');">
                            <div class="carousel-container">
                                <div class="carousel-content">
                                    <h2><spring:message code="tile.home.h6" text="TẬN TÂM"/></h2>
                                    <a href="#featured-services" class="btn-get-started scrollto"><spring:message code="title.home.h1" text="Bắt đầu"/></a>
                                </div>
                            </div>
                        </div>

                    </div>

                    <a class="carousel-control-prev" href="#introCarousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon ion-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>

                    <a class="carousel-control-next" href="#introCarousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon ion-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>

                </div>
            </div>
        </section><!-- #intro -->

        <main id="main">

            <!--==========================
              Featured Services Section
            ============================-->
            <section id="featured-services">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-4 box">
                            <i class="ion-ios-bookmarks-outline"></i>
                            <h4 class="title"><a href=""><spring:message code="tile.home.h7" text="Kế Hoạch"/></a></h4>
                        </div>

                        <div class="col-lg-4 box box-bg">
                            <i class="ion-ios-stopwatch-outline"></i>
                            <h4 class="title"><a href=""><spring:message code="tile.home.h8" text="Thời Gian"/></a></h4>
                        </div>

                        <div class="col-lg-4 box">
                            <i class="ion-ios-heart-outline"></i>
                            <h4 class="title"><a href=""><spring:message code="tile.home.h9" text="Sự Tin Cậy"/></a></h4>
                        </div>

                    </div>
                </div>
            </section><!-- #featured-services -->

            <!--==========================
              About Us Section
            ============================-->
            <section id="about">
                <div class="container">

                    <header class="section-header">
                        <h3><spring:message code="lable.home.menu2" text="Phòng ban"/></h3>
                        <p><spring:message code="tile.home.h10" text="Các bộ phận phòng ban của công ty."/></p>
                    </header>

                    <div class="row about-cols">
                        <c:forEach var="departs" items="${departs}">
                            <div class="col-md-4 wow fadeInUp">
                                <div class="about-col">
                                    <div class="img">
                                        <img src="img/phongban.jpg" alt="" class="img-fluid">
                                        <div class="icon"><i class="ion-ios-speedometer-outline"></i></div>
                                    </div>
                                    <h2 class="title" style="font-family: Times New Roman"><a href="#">${departs.name}</a></h2>

                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </section><!-- #about -->

            <!--==========================
              Services Section
            ============================-->
            <section id="services">
                <div class="container" style="font-family: Times New Roman">

                    <header class="section-header wow fadeInUp">
                        <h3><spring:message code="lable.home.menu3" text="Thành tích"/></h3>
                        <p><spring:message code="tile.home.h11" text="Dưới đây là danh sách các nhân viên được khen thưởng do hoạt động tích cực và có thành tích tốt."/></p>
                    </header>

                    <div class="row" >
                        <c:forEach var="r" items="${top}">
                            <div class="col-lg-4 col-md-6 box wow bounceInUp" data-wow-duration="1.4s">
                                <div class="icon"><img src="img/${r.photo}" style="height: 70px; width: 70px; padding-right: 5px;" alt=""></i></div>
                                <h4 class="title" style="font-family: Times New Roman"><a href="">${r.name}</a></h4>
                            </div>
                        </c:forEach>
                    </div>

                </div>
            </section><!-- #services -->

            <!--==========================
              Call To Action Section
            ============================-->
            <section id="call-to-action" class="wow fadeIn">
                <div class="container text-center">
                    <h3><spring:message code="tile.home.h12" text="Kêu gọi hành động"/></h3>
                    <p> <spring:message code="tile.home.h13" text="Chuyên thiết kế website bằng công nghệ HTML 5"/></p>
                    <a class="cta-btn" href="#"><spring:message code="tile.home.h12" text="Kêu gọi hành động"/></a>
                </div>
            </section><!-- #call-to-action -->

            <!--==========================
              Skills Section
            ============================-->
            <section id="skills">
                <div class="container">

                    <header class="section-header">
                        <h3><spring:message code="tile.home.h14" text="KỸ NĂNG"/></h3>
                        <p><spring:message code="tile.home.h13" text="Chuyên thiết kế website bằng công nghệ HTML 5"/></p>
                    </header>

                    <div class="skills-content">

                        <div class="progress">
                            <div class="progress-bar bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
                                <span class="skill">HTML <i class="val">100%</i></span>
                            </div>
                        </div>

                        <div class="progress">
                            <div class="progress-bar bg-info" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                                <span class="skill">CSS <i class="val">90%</i></span>
                            </div>
                        </div>

                        <div class="progress">
                            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
                                <span class="skill">JavaScript <i class="val">75%</i></span>
                            </div>
                        </div>

                        <div class="progress">
                            <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100">
                                <span class="skill">Photoshop <i class="val">55%</i></span>
                            </div>
                        </div>

                    </div>

                </div>
            </section>

            <!--==========================
              Facts Section
            ============================-->
            <section id="facts"  class="wow fadeIn">
                <div class="container">

                    <header class="section-header">
                        <h3><spring:message code="tile.home.h15" text="Nhật ký làm việc của công ty."/></h3>
                        <p></p>
                    </header>

                    <div class="row counters">

                        <div class="col-lg-3 col-6 text-center">
                            <c:forEach var="k" items="${tnv}">
                            <span data-toggle="counter-up">${k.tongso}</span>
                            </c:forEach>
                            <p><spring:message code="tile.home.h16" text="Tổng số nhân viên"/></p>
                        </div>

                        <div class="col-lg-3 col-6 text-center">
                            <c:forEach var="l" items="${tpb}">
                            <span data-toggle="counter-up">${l.tongsopb}</span>
                            </c:forEach>
                            <p><spring:message code="tile.home.h17" text="Tổng số phòng ban"/></p>
                        </div>

                        <div class="col-lg-3 col-6 text-center">
                            <c:forEach var="m" items="${tkt}">
                            <span data-toggle="counter-up">${m.tongkhenthuong}</span>
                            </c:forEach>
                            <p><spring:message code="tile.home.h18" text="Tổng nhân viên giỏi"/></p>
                        </div>

                        <div class="col-lg-3 col-6 text-center">
                            <span data-toggle="counter-up">20</span>
                            <p><spring:message code="tile.home.h19" text="Tổng số đối tác"/></p>
                        </div>

                    </div>

                    <div class="facts-img">
                        <img src="img/facts-img.png" alt="" class="img-fluid">
                    </div>

                </div>
            </section><!-- #facts -->

            <!--==========================
     Portfolio Section
   ============================-->
            <section id="portfolio"  class="section-bg" style="background-color: rgba(255,255,255,0.1)" >
                <div style="margin-top: -50px; margin-bottom: -50px; background-color: rgba(255,255,255,0.1)">
                    <img src="http://bsnscb.com/data/out/86/27410260-gif-wallpapers.gif" style="height: 500px"/>
                </div>
            </section><!-- #portfolio -->

            <!--==========================
              Clients Section
            ============================-->
            <section id="clients" class="wow fadeInUp">
                <div class="container">

                    <header class="section-header">
                        <h3><spring:message code="tile.home.h20" text="ĐỐI TÁC"/></h3>
                    </header>

                    <div class="owl-carousel clients-carousel">
                        <img src="img/clients/client-1.png" alt="">
                        <img src="img/clients/client-2.png" alt="">
                        <img src="img/clients/client-3.png" alt="">
                        <img src="img/clients/client-4.png" alt="">
                        <img src="img/clients/client-5.png" alt="">
                        <img src="img/clients/client-6.png" alt="">
                        <img src="img/clients/client-7.png" alt="">
                        <img src="img/clients/client-8.png" alt="">
                    </div>

                </div>
            </section><!-- #clients -->

            <!--==========================
              Clients Section
            ============================-->
            <section id="testimonials" class="section-bg wow fadeInUp">
                <div class="container">

                    <header class="section-header">
                        <h3><spring:message code="tile.home.h21" text="THÔNG TIN NHÂN VIÊN"/></h3>
                    </header>

                    <div class="owl-carousel testimonials-carousel">
                        <c:forEach var="d" items="${tt}">
                            <div class="testimonial-item">
                                <img src="img/${d.photo}" class="testimonial-img" alt="">
                                <h3>${d.name}</h3>
                                <h4>${d.departId}</h4>
                                <p>
                                    <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                                    ${d.notes}
                                    <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
                                </p>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </section><!-- #testimonials -->

            <!--==========================
              Team Section
            ============================-->
            <section id="team">
                <div class="container">
                    <div class="section-header wow fadeInUp">
                        <h3><spring:message code="tile.home.h22" text="LÃNH ĐẠO"/></h3>
                        <p><spring:message code="tile.home.h23" text="Các nhân viên cấp cao của công ty"/></p>
                    </div>

                    <div class="row">
                        <c:forEach var="t" items="${boss}">
                            <div class="col-lg-3 col-md-6 wow fadeInUp">
                                <div class="member">
                                    <img src="img/${t.photo}" class="img-fluid" style="height: 250px;" alt="">
                                    <div class="member-info">
                                        <div class="member-info-content">
                                            <h4>${t.name}</h4>
                                            <span>Cấp độ: ${t.capdo}</span>
                                            <div class="social">
                                                <a href=""><i class="fa fa-twitter"></i></a>
                                                <a href=""><i class="fa fa-facebook"></i></a>
                                                <a href=""><i class="fa fa-google-plus"></i></a>
                                                <a href=""><i class="fa fa-linkedin"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </section><!-- #team -->

            <!--==========================
              Contact Section
            ============================-->
            <section id="contact" class="section-bg wow fadeInUp">
                <div class="container">

                    <div class="section-header">
                        <h3><spring:message code="tile.home.h24" text="LIÊN HỆ"/></h3>
                        <p><spring:message code="tile.home.h25" text="Liên hệ phòng IT đễ sửa lỗi cho trang web"/></p>
                    </div>

                    <div class="row contact-info">

                        <div class="col-md-4">
                            <div class="contact-address">
                                <i class="ion-ios-location-outline"></i>
                                <h3><spring:message code="tile.home.h26" text="ĐỊA CHỈ"/></h3>
                                <address>192 Nam Kỳ Khởi Nghĩa</address>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="contact-phone">
                                <i class="ion-ios-telephone-outline"></i>
                                <h3><spring:message code="tile.home.h27" text="SỐ ĐIỆN THOẠI"/></h3>
                                <p><a href="tel:+927383635">+84 927 383 635</a></p>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="contact-email">
                                <i class="ion-ios-email-outline"></i>
                                <h3><spring:message code="tile.home.h28" text="EMAIL"/></h3>
                                <p><a href="mailto:phongptps05454@fpt.edu.vn">phongptps05454@fpt.edu.vn</a></p>
                            </div>
                        </div>

                    </div>

                    <div class="form">
                        <div id="sendmessage">Tin nhắn đã được gửi. Thank you!</div>
                        <div id="errormessage"></div>
                        <form action="" method="post" role="form" class="contactForm">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" name="name" class="form-control" id="name" placeholder="<spring:message code="tile.home.h29" text="Họ tên"/>" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="email" class="form-control" name="email" id="email" placeholder="<spring:message code="tile.home.h30" text="Email của bạn"/>" data-rule="email" data-msg="Please enter a valid email" />
                                    <div class="validation"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="subject" id="subject" placeholder="<spring:message code="tile.home.h31" text="Chủ đề"/>" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="<spring:message code="tile.home.h32" text="Nội dung"/>"></textarea>
                                <div class="validation"></div>
                            </div>
                            <div class="text-center"><button type="submit"><spring:message code="tile.home.h33" text="Gửi tin nhắn"/></button></div>
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
                            <p><spring:message code="tile.home.h37" text="Dự án Java 5 - Sinh viên thực hiện PhongPTPS05454 - Fpoly."/></p>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4><spring:message code="tile.home.h34" text="LIÊN KẾT"/></h4>
                            <ul>
                                <li><i class="ion-ios-arrow-right"></i> <a href="#">Home</a></li>
                                <li><i class="ion-ios-arrow-right"></i> <a href="#">About us</a></li>
                                <li><i class="ion-ios-arrow-right"></i> <a href="#">Services</a></li>
                                <li><i class="ion-ios-arrow-right"></i> <a href="#">Terms of service</a></li>
                                <li><i class="ion-ios-arrow-right"></i> <a href="#">Privacy policy</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-contact">
                            <h4><spring:message code="tile.home.h35" text="LIÊN HỆ"/></h4>
                            <p>
                                Nam Kỳ Khởi Nghĩa<br>
                                Hồ Chí Minh, HCM 700000<br>
                                Asia <br>
                                <strong><spring:message code="tile.home.h21" text="THÔNG TIN NHÂN VIÊN"/></strong> +84 927 383 635<br>
                                <strong><spring:message code="tile.home.h21" text="THÔNG TIN NHÂN VIÊN"/></strong> phongptps05454@fpt.edu.vn<br>
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
                            <h4><spring:message code="tile.home.h36" text="BẢN QUYỀN"/></h4>
                            <p><button type="submit"><spring:message code="tile.home.h38" text="Bản quyền thuộc về PhongPTPS05454 - Poly K12.3."/></p>
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
        <script src="lib/jquery/jquery.min.js"></script>
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